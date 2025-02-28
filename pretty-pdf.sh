#!/usr/bin/env bash
# Install this script in your PATH to pretty-print any format into a PDF file.

: ${PRETTY_PDF_CMD:=pretty-pdf}
: ${PRETTY_PDF_IMAGE:=ghcr.io/towi/pretty-pdf}

# with no arguments, default to helpme
if [ $# -eq 0 ]; then
    PRETTY_PDF_CMD=helpme
    goto run
fi

case $1 in
    helpme|list-fonts|plant-uml|pretty-pdf|pretty-pdf-ex|tik2pdf|xelatex|latex|pdflatex|dot|python3|magick)
        PRETTY_PDF_CMD=$1
        ;;
    --help|-h)
        echo "Usage: $0 [helpme|list-fonts|plant-uml|pretty-pdf|pretty-pdf-ex|tik2pdf|xelatex|latex|pdflatex|dot|python3|magick] [args]"
        echo "Default is pretty-pdf"
        exit 0
        ;;
esac

run:
docker run --rm -v $(pwd):/data \
    -u $(id -u):$(id -g) \
    ${PRETTY_PDF_IMAGE} \
    ${PRETTY_PDF_CMD} $@

