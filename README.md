# pandoc-pretty-pdf

All-in-one documentation conversion solution:
 - LaTeX -- 'nough said
 - pandoc -- markdown and more to anything
 - PlantUML -- de-facto standard for diagrams-as-text
 - pandoc-plantuml-filter -- embed plantuml diagrams directly in markdown
 - Graphviz -- dot language graph layout, needed for some plantumls
 - eisvogel.tex -- a template for pretty pdfs from markdown via pandoc and latex
 - Python3 -- is needed for pandoc et.al.
 - Tikz2Pdf -- use a LaTeX fragment with just a Tikz graphic to create a PDF (or similar)

See [helpme](app/helpme.md) for a manpage like doc.


## TL;DR: How to use?

To convert `FILE.md` to a pretty `FILE.pdf`:

    docker run --rm -v $(pwd):/data \
        ghcr.io/towi/pandoc-pretty-pdf \
        pandoc-pretty-pdf -o FILE.pdf FILE.md


## Creating Docker Image

Process `Dockerfile` and create `:latest` image:

    make docker-build

Run some simple tests with the local `:latest` docker image:

    make docker-check

Add version tags for local registry:

    make docker-tag

Add version tags for remote registry and push `:latest` and tagged version there:

    make docker-push


### Known issues

I have painfully experienced both of the following issues.

 * `docker run towi/pandoc-pretty-pdf` requires `--user ...` to be able to write the output file into the hosts directory on some systems (Windows?).
 * `docker build` fails because TeX finds `tlmgr` incompatible with the current *TeX Live* release.

If I read the page https://hub.docker.com/r/pandoc/latex carefully, I would have know what to do.
So here are the most important excerpts:

**`docker run towi/pandoc-pretty-pdf` requires `--user` flag (on Linux), there is no good way around it:**

> Ownership of the output file is determined by the user executing pandoc in the container. This will generally
> be a user different from the local user. It is hence a good idea to specify for docker the
> user and group IDs to use via the --user flag.
> ...
> 
>       docker run --rm -v "$(pwd):/data" -u $(id -u):$(id -g) pandoc/latex'

FYI, I tried to solve this with `su-exec` in `entrypoint.sh` as well as `gosu`, but it did not work.


**TeX Live version outdated:**

> Note that, due to the way TeXLive releases work, users who build derivative images may experience problems 
> if the TeXLive version has been newly frozen. This can be resolved by pulling the updated base image again.

I found a way to work around that with https://tex.stackexchange.com/a/590751, 
but I foresee problems because it feels very brittle:

    RUN tlmgr repository add ftp://tug.org/historic/systems/texlive/2022/tlnet-final && \
      tlmgr repository list && \
      tlmgr repository remove https://ctan.mirror.norbert-ruehl.de/systems/texlive/tlnet && \
      tlmgr option repository ftp://tug.org/historic/systems/texlive/2022/tlnet-final

If that happens to you the best solution is probably to update `FROM ...`
so it used the current active TeX Live version, if available.




## Example usage

### Markdown to Eisvogel PDF

The following Makefile excerpt can convert
a `*.md` file into a `*.pdf` file.

    _volume=$(shell pwd):/data
    _uidgid=$(shell id -u):$(shell id -g)
    PANDOCCY_TAG=towi/pandoc-pretty-pdf:latest
    PANDOC:=docker run --rm --volume $(_volume) --user $(_uidgid) $(PANDOCCY_TAG) pandoc
    PANDOC_FROM:=markdown+definition_lists+table_captions
    PANDOC_EISVOGEL_ARGS:=--template eisvogel --pdf-engine xelatex --listings --filter pandoc-plantuml -V "code-block-font-size:\scriptsize" -V "table-use-row-colors:true" -V "footer-center:confidential"
    
    %.pdf: %.md
        $(PANDOC) --from $(PANDOC_FROM) $(PANDOC_EISVOGEL_ARGS) pandoc-pretty-pdf $< -o $@
     
    clean:
        $(RM) *.cf *.xhtml *.pdf *.log
        $(RM) -r plantuml-images/

## Fonts for Eisvogel

The simplest way is to set the variable `mainfont` with `-V` on command line:

    docker run \
      --rm \
      --volume $(pwd):/data \
      --user 1000:1000 \
      towi/pandoc-pretty-pdf:latest \
      pandoc-pretty-pdf \
        -V 'mainfont=Droid Serif' \
        -o eisvogel_test.pdf \
        eisvogel_test.md

To get a list of fonts try the command `list-fonts`.
A more extensive explanation is in [README-texfonts](README-texfonts.md).


### External Stuff Version Info

 * pandoc latex image -- https://hub.docker.com/r/pandoc/latex
 * PlantUML -- https://plantuml.com/de/download



## Changes

---------

| version | feature                |
|--------:|------------------------|
|     1.0 | initial public release | 
