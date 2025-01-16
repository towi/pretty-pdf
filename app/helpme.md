# Main Commands

    pandoc                  # Markdown to pretty
    pandoc-pretty-pdf       # Simple wrapper to eisvogel pandoc
    xelatex                 # LaTeX
    plantuml                # Text diagrams to graphic
    dot                     # Graphviz, text graph layout
    python3                 # Run python3 scripts
    tikz2pdf                # Convert TikZ to PDF

  Details below.

## pandoc
  Use pandoc to convert Markdown files into anything.

    pandoc -h                         # show help
    pandoc -o outfile.html infile.md  # eg convert Markdown to HTML
    pandoc [pandoc-options...]        # any way you like

  The *pandoc-plantuml-filter* is installed so you can use

   ```plantuml
   a -> b
   ```
  in your markdown and the diagram will be rendered.

  The template `eisvogel` is installed to make PDFs pretty.

## pandoc-pretty-pdf
  Simple wrapper script to apply some options for pandoc
  using the Eisvogel template

    pandoc-pretty-pdf -o outfile.pdf infile.md
    pandoc-pretty-pdf [pandoc-options...]

## xetex
  XeLaTeX is available mostly as a PDF engine, but you can certainly use it. 

    latex [latex-options...]
    xelatex [latex-options...]
    pdflatex [latex-options...]
    ...and many more latex programs

## PlantUML
  Use PlantUML in your markdown files or call it directly:
  
    plantuml -h                       # show help
    plantuml input.puml -tpng         # convert PlantUML to PNG
    plantuml [plantuml-options...]    # anything

## Graphviz
  Define Graphs as Text and let them layout and render.
  
    dot -h                            # show help
    dot -Tpng input.dot               # convert .dot to .png
    dot [graphviz-options...]         # anything
    ...and neato, etc if you need it

## tikz2pdf

https://github.com/jeroenjanssens/tikz2pdf/tree/master

## Python3
  We installed python3 because we needed it anyway.
  
    python3 [python-options...]

  The `PATH` includes `/app` and the `PYTHONPATH` includes `/app/lib`.

# Calling via Docker

  You will be calling this via `docker run`. It is very likely that
  you need docker to access to your outside files. Ths you will need
  to mount a local directory to `/data` on command line, probably like this:

    docker run --rm --volume $(pwd):/data --user $(id -u):$(id -g) $PANDOCCY ...

  To look around and be interactive do

    docker run --rm --it --volume $(pwd):/data --user $(id -u):$(id -g) $PANDOCCY sh

----
