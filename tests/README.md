## notes

### strikethrough

pandoc emits `\st`  for `~~` strikethrough.
That requires the package `soul` to be loaded.
We instead use `\sout` from the package `ulem`.

To make this work I had to add the following to the preamble:

```
---
header-includes: |
    \newcommand{\st}[1]{\sout{#1}}
---
```

There are other options, like leading `soul`, too.


### Maths

The example section 

```
inline \(x = \int_{0^1}^1(-b \pm \sqrt{b^2-4ac})/(2a)\) math
```

I could not made to work.


### Headers

In some places in [mdtest-typemill-basic.md](mdtest-typemill-basic.md) I had
to replace `##Header`  with `## Header` to make it work.


### TOC

Instead of `[TOC]` or `[[__TOC__]]` we use `\tableofcontents`.



### Abbreviations


from [mdtest-typemill-basic.md](mdtest-typemill-basic.md) and
[mdtest-markdown_id-basic.md](mdtest-markdown_id-basic.md) don't work:

```
*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium
```


### Notices

from [mdtest-typemill-basic.md](mdtest-typemill-basic.md) don't work:

```
You can create different notices if you add a ‘!’, ‘!!’, ‘!!!’, ‘!!!!’ before a line
```

