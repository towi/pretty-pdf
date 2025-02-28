## Fonts for Eisvogel

Add `mainfont` a the doc header like

    ---
    mainfont: Droid Sans Mono
    ...
    
    # Test Eisvogel Template
    
    This file should be converted to a PDF with *pandoc* and the LaTeX Eisvogel template.

or set the `mainfont` variable with `-V`.

    docker run \
      --rm \
      --volume $(pwd):/data \
      --user 1000:1000 \
      towi/pretty-pdf:latest \
      pretty-pdf \
        -V 'mainfont=Droid Serif' \
        -o eisvogel_test.pdf \
        eisvogel_test.md

The list of available font families you can get with the command `fc-list : familiy` in a shell:

    $ docker run --rm -it towi/pretty-pdf:latest sh
    [pretty-pdf] helpme helps (/data)$ fc-list : family
    Droid Sans Mono
    Droid Arabic Kufi
    Droid Sans Ethiopic
    Droid Sans Devanagari
    Droid Sans Japanese
    Droid Serif
    Droid Sans Arabic
    Droid Sans Fallback
    Droid Naskh Shift Alt
    Droid Sans

A better list might be shown with `fc-list :outline -f "%{family}\n"`.
For your convenience you can run the docker image with the `font-list` command.

We have the fonts from `texlive-extra` included so the list can be rather extensive now,
so here is an excerpt:

    docker run --rm --volume $(pwd):/data --user 1000:1000 towi/pretty-pdf:latest list-fonts \
        | grep -4 QTVagaRound
    QTTheatre
    QTTimeOutline
    QTTumbleweed
    QTUSA-Uncial
    QTVagaRound
    QTWeise
    QTWestEnd
    Quattro
    Quattro Sans

Which you can use liek this (or on command line with `-V`):

    # Test Eisvogel Template
    
    \setmainfont{QTVagaRound}
    
    \large
    
    This file should be converted to a PDF with *pandoc* and the *LaTeX Eisvogel* template.
    
    This is a sentence with **bold**, with *italic* and with **some *bold-italic* text**.


The list is long. Maybe you find here what you look for:
 * [sans serif list](https://tug.org/FontCatalogue/sansseriffonts.html)

The names there give only a hint on the names you have to use here. Also, some
font families seem not to be complete. I had difficulties with a font where 
a `*.ttf` and a `*.pfb` was available. 

So instead of just selecting `\setmainfont{PT Sans Narrow}` I had to be explicit again like this:

    ---
    header-includes: |
        \setmainfont[Path=/usr/share/texmf-dist/fonts/truetype/paratype/ptsans/,BoldFont=PTN77F.ttf]{PTN57F.ttf}
    ...
    
    # Test Eisvogel Template
    
    \large
    
    This file should be converted to a PDF with *pandoc* and the *LaTeX Eisvogel* template.
    
    This is a sentence with **bold**, with *italic* and with **some *bold-italic* text**.

Speaking of explicit -- you can use them like this:

    ---
    header-includes: |
        \usepackage{fontspec}
    ...
    
    # Test Fonts
    
    \setmainfont[
        Path = /usr/share/texmf-dist/fonts/opentype/rozynski/comicneue/,
        UprightFont = *-Regular,
        ItalicFont = *-RegularItalic,
        BoldFont = *-Bold,
        BoldItalicFont = *-BoldItalic]{ComicNeue.otf}
    
    Lorem ipsum.

You have to do a search with `find /usr/share/texmf-dist/fonts -name "*.otf"` inside the container's shell, though.

Later I needed to do `\fontspec` in text because `\setmainfont` (neither in text nor the preample)
didn't work for some reason. Alas, `\fontspec` is reset after `\begin{document}` so it has to be in text.

    `\scriptsize`{=latex}
    `\fontspec[Path=/usr/share/texmf-dist/fonts/truetype/paratype/ptsans/,BoldFont=PTN77F.ttf]{PTN57F.ttf}`{=latex}


## Font Size


There are so many ways to change the font size

Use a header like

    ---
    header-includes: |
        \usepackage[fontsize=8pt]{fontsize}
    ...

Or put into your text

    \scriptsize

and so on.
