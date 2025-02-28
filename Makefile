all: docker-build

# docker name to create
IMAGE_NAME:=pretty-pdf
VERSION:=1.0
PATCH:=0

NAMESPACE:=towi
LOCAL:=$(NAMESPACE)/$(IMAGE_NAME)
LOCAL_LATEST:=$(LOCAL):latest
LOCAL_TAG:=$(LOCAL):$(VERSION)
REGISTRY:=ghcr.io
LATEST:=$(REGISTRY)/$(NAMESPACE)/$(IMAGE_NAME):latest
TAG:=$(REGISTRY)/$(NAMESPACE)/$(IMAGE_NAME):$(VERSION)

GITHUB_USERNAME=towi


docker-login: .$(REGISTRY)-secret.txt
	cat .$(REGISTRY)-secret.txt | \
		docker login $(REGISTRY) --username $(GITHUB_USERNAME) --password-stdin

# just build it for local use
docker-build: Dockerfile app/plantuml
	docker build \
		--build-arg PRETTY_PDF=$(TAG) \
 		-t $(LOCAL_LATEST) \
		.

# local tagging
docker-tag:
	docker tag $(LOCAL_LATEST) $(LOCAL_TAG)
	docker tag $(LOCAL_LATEST) $(LOCAL_TAG).$(PATCH)

# remote tagging and uploading
docker-push: docker-tag
	docker tag $(LOCAL_LATEST) $(LATEST)
	docker tag $(LOCAL_LATEST) $(TAG)
	docker tag $(LOCAL_LATEST) $(TAG).$(PATCH)
	docker push $(LATEST)
	docker push $(TAG)
	docker push $(TAG).$(PATCH)

# play around inside
docker-sh:
	docker run \
			--rm -it \
		$(LOCAL_LATEST) sh

docker-user-sh:
	docker run \
			--rm -it \
			--volume $(shell pwd):/data \
		$(LOCAL_LATEST) sh

# check if it works
docker-check:
	@echo "====================== Testing Plantuml ============================"
	docker run --rm $(LOCAL_LATEST) plantuml -h
	@echo "====================== Testing Pandoc ============================"
	docker run --rm $(LOCAL_LATEST) pandoc -h
	@echo "====================== Testing Fonts ============================"
	docker run --rm $(LOCAL_LATEST) list-fonts
	@echo "====================== Testing Plantuml Filter for Pandoc ============================"
	@echo "   (not a good test yet. please improve it)"
	-echo '{"meta":{},"blocks":[]}' | docker run --rm -i $(LOCAL_LATEST) python3 -m pandoc_plantuml_filter && echo "\nOK."
	@echo "====================== Testing Eisvogel Template ============================"
	$(MAKE) -B tikz2pdf_test
	@echo "====================== Testing TikZ to PDF ============================"
	$(MAKE) -B eisvogel_test

hello.pdf: hello.tikz
tikz2pdf_test: hello.pdf

eisvogel_test: eisvogel_test.pdf

%.pdf: %.md
	docker run \
			--rm \
			--volume $(shell pwd):/data \
			--user $(shell id -u):$(shell id -g) \
		$(LOCAL_LATEST) \
			pretty-pdf \
		-o $@ \
		$<
		@echo "___ result file: ___"
		ls -l $@

%.pdf: %.tikz
	docker run \
			--rm \
			--volume $(shell pwd):/data \
			--user $(shell id -u):$(shell id -g) \
		$(LOCAL_LATEST) \
			tikz2pdf  \
	        -d \
		$< \
		-o $@
		@echo "___ result file: ___"
		ls -l $@

# check with image from hub
hub-check: eisvogel_test-hub.pdf
eisvogel_test-hub.pdf: eisvogel_test.md
	docker run \
			--rm \
			--volume $(shell pwd):/data \
			--user $(shell id -u):$(shell id -g) \
		$(LATEST) \
			pretty-pdf \
		-o $@ \
		$<
		@echo "___ result file: ___"
		ls -l $@

#####

test: docker-check
	$(MAKE) -C tests/

#####

clean:
	$(RM) eisvogel_test.pdf eisvogel_test-hub.pdf
	$(MAKE) -C tests/ clean
