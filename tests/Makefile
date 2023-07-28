# -*- Makefile -*-

PDFS=\
	formate-basic.pdf \
	listings-basic.pdf \
	mdtest-markdown_id-basic.pdf \
	mdtest-mxstbr-basic.pdf \
	mdtest-typemill-basic.pdf \
	cluster-grype-report-prelong.pdf \
	cluster-grype-report-basic.pdf \
	vorwort-basic.pdf \
	vorwort-long.pdf


TARGETS=$(PDFS)

all: $(PDFS)


##################################################

# docker name to create
IMAGE_NAME:=pandoc-pretty-pdf

NAMESPACE:=towi
LOCAL:=$(NAMESPACE)/$(IMAGE_NAME)

PANDOC_PRETTY_PDF=\
    docker run \
        --rm \
        --volume $(shell pwd):/data \
    $(LOCAL) \
    pandoc-pretty-pdf

#################################################

%-basic.pdf: %.md
	$(PANDOC_PRETTY_PDF) \
		-o $@ \
		$<


%-long.pdf: %.md
	$(PANDOC_PRETTY_PDF) \
		-V 'footer-center:confidential' \
		-V geometry:margin=1.5cm \
		-V fontsize=7pt \
		-o $@ \
		$<

%-prelong.pdf: %.md %.md.pre
	$(PANDOC_PRETTY_PDF) \
		-V 'footer-center:confidential' \
		-V geometry:margin=1.5cm \
		-V fontsize=7pt \
		-o $@ \
		$<.pre $<


%-landscape.pdf: %.md
	$(PANDOC_PRETTY_PDF) \
		-V geometry:margin=1cm \
		-V geometry:landscape \
		-o $@ \
		$<


%.tex: %.md
	$(PANDOC_PRETTY_PDF) \
		-s -o $@ \
		$<


# font
#    -V 'mainfont=Droid Serif' \

##################################################

clean:
	$(RM) *.pdf *.tex *.log
