# -*- Makefile -*-

TIKZ=$(shell find tikz2pdf -name '*.tikz')
PDFS=\
	formate-basic.pdf \
	listings-basic.pdf \
	mdtest-mxstbr-basic.pdf \
	mdtest-typemill-basic.pdf \
	cluster-grype-report-prelong.pdf \
	cluster-grype-report-basic.pdf \
	vorwort-basic.pdf \
	vorwort-long.pdf \
	$(patsubst %.md, %-long.pdf, $(wildcard puml-*.md)) \
	$(patsubst %.tikz, %.pdf, $(TIKZ)) \
	fonts


# FAILS currently:
#	mdtest-markdown_id-basic.pdf \


TARGETS=$(PDFS)

all: $(PDFS) fonts

# Print the expansions
debug:
	@echo "tikz: $(TIKZ)"
	@echo "Full PDF list: $(PDFS)"

##################################################

# docker name to create
IMAGE_NAME:=pretty-pdf

NAMESPACE:=towi
LOCAL:=$(NAMESPACE)/$(IMAGE_NAME)

PRETTY_PDF=\
    docker run \
        --rm \
        --volume $(shell pwd):/data \
    $(LOCAL) \
    pretty-pdf

TIKZ2PDF=\
    docker run \
        --rm \
        --volume $(shell pwd):/data \
	--user $(shell id -u):$(shell id -g) \
    $(LOCAL) \
    tikz2pdf

CONVERT=\
    docker run \
        --rm \
        --volume $(shell pwd):/data \
	--user $(shell id -u):$(shell id -g) \
    $(LOCAL) \
    magick

#################################################

%-basic.pdf: %.md
	$(PRETTY_PDF) \
		-o $@ \
		$<


%-long.pdf: %.md
	$(PRETTY_PDF) \
		-V 'footer-center:confidential' \
		-V geometry:margin=1.5cm \
		-V fontsize=7pt \
		-o $@ \
		$<

%-prelong.pdf: %.md %.md.pre
	$(PRETTY_PDF) \
		-V 'footer-center:confidential' \
		-V geometry:margin=1.5cm \
		-V fontsize=7pt \
		-o $@ \
		$<.pre $<


%-landscape.pdf: %.md
	$(PRETTY_PDF) \
		-V geometry:margin=1cm \
		-V geometry:landscape \
		-o $@ \
		$<


%.tex: %.md
	$(PRETTY_PDF) \
		-s -o $@ \
		$<


%.pdf: %.tikz
	$(TIKZ2PDF) \
		$< \
		-o $@
	ls -l $@
%.png: %.pdf
	$(CONVERT) \
		$< \
		$@


tikz2pdf-fonts/tmp-fonts.makefile: fonts.txt Makefile
	mkdir -p tikz2pdf-fonts/
	echo "all: \\" > $@
	for font in $$(cat fonts.txt); do \
		echo -n "  tikz2pdf-fonts/buchcxx-42StdConcepts-font-$$font.png " >> $@ ; \
		echo "tikz2pdf-fonts/buchcxx-07endian-font-$$font.png \\" >> $@ ; \
	done
	echo "" >> $@
	echo "" >> $@
	echo "%.png: %.pdf" >> $@
	echo "\t$(CONVERT)  -density 300 \$$<  \$$@" >> $@
	echo "" >> $@
	for font in $$(cat fonts.txt); do \
		echo "tikz2pdf-fonts/buchcxx-42StdConcepts-font-$$font.pdf: tikz2pdf/buchcxx-42StdConcepts.tikz" >> $@ ; \
		echo "\t$(TIKZ2PDF) --font $$font tikz2pdf/buchcxx-42StdConcepts.tikz -o tikz2pdf-fonts/buchcxx-42StdConcepts-font-$$font.pdf" >> $@ ; \
		echo "\tls -l tikz2pdf-fonts/buchcxx-42StdConcepts-font-$$font.pdf" >> $@ ; \
		echo "tikz2pdf-fonts/buchcxx-07endian-font-$$font.pdf: tikz2pdf/buchcxx-07endian.tikz" >> $@ ; \
		echo "\t$(TIKZ2PDF) --font $$font tikz2pdf/buchcxx-07endian.tikz -o tikz2pdf-fonts/buchcxx-07endian-font-$$font.pdf" >> $@ ; \
		echo "\tls -l tikz2pdf-fonts/buchcxx-07endian-font-$$font.pdf" >> $@ ; \
	done

fonts: tikz2pdf-fonts/tmp-fonts.makefile
	$(MAKE) -j 8 -f tikz2pdf-fonts/tmp-fonts.makefile


unicode-test.pdf: unicode-test.md
	docker run --rm               \
		--volume $(CURDIR):/data               \
		-u $(shell id -u):$(shell id -g)               \
		$(LOCAL)             \
		pretty-pdf               \
		-V fontsize=10pt\
		-o unicode-test.pdf \
		unicode-test.md


# font
#    -V 'mainfont=Droid Serif' \

##################################################

clean:
	$(RM) *.pdf *.tex *.log tmp-* tikz2pdf/*.pdf tikz2pdf/*.png
	$(RM) -r plantuml-images/ tikz2pdf-fonts/
