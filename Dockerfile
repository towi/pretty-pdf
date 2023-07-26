# syntax=docker/dockerfile:1

###   3.1.1.0 is based on TeX Live 2022. We may have to adjust 'tmgr's repository, see below.
FROM pandoc/latex:3.1.1.0

LABEL org.opencontainers.image.source=https://github.com/towi/pandoc-pretty-pdf
LABEL org.opencontainers.image.description="pandoc-pretty-pdf converts Markdown to _pretty_ PDFs with pandoc and Wandmalfarbe Eisvogel LaTeX template."
LABEL org.opencontainers.image.licenses=MIT


# --build-arg PANDOC_PRETTY_PDF=...
ARG PANDOC_PRETTY_PDF=towi/pandoc-pretty-pdf:latest
ENV PANDOC_PRETTY_PDF=$PANDOC_PRETTY_PDF

ARG PLANTUML_VERSION=1.2023.7
ENV PLANTUML_VERSION=$PLANTUML_VERSION

ENV LANG en_US.UTF-8

### put our own scripts and programs here
RUN mkdir /app
ENV PATH="/app:${PATH}"
ENV PYTHONPATH="/app/lib:${PYTHONPATH}"

####################
#

RUN apk --no-cache add --update \
    texmf-dist-fontsextra \
    bash py3-pip \
    curl \
    graphviz ttf-droid ttf-droid-nonlatin


####################
# Latex first
# - this is brittle over time, because tex/tug/texlive changes every year

# The pandoc-image is TeX-Live-2022, tlmgr repo is 2023 today and thus incompatible with it.
#   Thus we have to use an old repo, see https://tex.stackexchange.com/a/590751
#   In case you update the 'FROM ...' someday, you have to adjust these ftp urls, too.
RUN tlmgr repository add ftp://tug.org/historic/systems/texlive/2022/tlnet-final && \
 tlmgr repository list && \
 echo ??? tlmgr repository remove https://ctan.mirror.norbert-ruehl.de/systems/texlive/tlnet && \
 tlmgr option repository ftp://tug.org/historic/systems/texlive/2022/tlnet-final
#RUN tlmgr --verify-repo=none update --self
### Yes I know, doing it in one step would be more efficient. But I often have to debug here.
RUN tlmgr --verify-repo=none install adjustbox babel-german background bidi collectbox csquotes everypage \
 filehook footmisc footnotebackref framed fvextra letltxmacro ly1 \
 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro \
 titling ucharcat ulem \
 unicode-math \
 upquote \
 xurl \
 zref \
 koma-script \
 float \
 fontsize \
 fontawesome5
#RUN tlmgr --verify-repo=none install xecjk

# new in updated version of eisvogel. added at version 1.5.5 but didnt resolve problem.
RUN tlmgr --verify-repo=none install koma-script

### ___ Last tlmgr line. add your additions above ^^^
RUN tlmgr --verify-repo=none backup --clean --all

# fonts
RUN cp /opt/texlive/texdir/texmf-var/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive-fonts.conf
COPY 08-textlive-extra-fonts.conf /etc/fonts/conf.d/08-textlive-extra-fonts.conf
RUN fc-cache -fsv


#############################
# Python stuff

RUN pip install \
    pandoc-plantuml-filter
### -> mkdocs needs Pillow needs zopfli needs gcc/python3-dev/musl-dev/g++. Kaboom!
#RUN pip install mkdocs \
#  mkdocs-with-pdf mkdocs-build-plantuml-plugin

### PlantUML needs java
RUN apk --no-cache add openjdk17 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

### well, then we need plantuml too, of course
RUN curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download \
    -o /app/plantuml.jar

### and pandoc (or the filter) expects 'plantuml' to be in the PATH


################################
# Local Stuff (that has a chance to change often, so it goes to the bottom)

ENV PS1 "[pandoc-pretty-pdf] helpme helps (`pwd`)$ "

# - 'chmod -R 777 /var/cache/fontconfig' fixes the "Fontconfig error: No writable cache directories" nuisance.
RUN mkdir -p /.local/share/pandoc/templates && \
    chmod -R 777 /.local && \
    chmod -R 777 /var/cache/fontconfig

COPY app /app
RUN chmod 555 /app/plantuml
RUN chmod 555 /app/pandoc-pretty-pdf
RUN chmod 555 /app/helpme
RUN chmod 555 /app/list-fonts
#nothing yet:
#RUN chmod 555 /app/*.py


# "USER pandoccy" was needed because:
# - the home-dir of any user is "/", home-dir of root is "/root"
# - when called "docker run towi/pandoc-pretty-pdf" the stuff is executed as user root (if 'USER pandoccy' is not here)
# - that means that the home dir is "/root"
# - when called "docker run -u $(id -u) towi/pandoc-pretty-pdf" the stuff is executed as some user
# - that means that the home dir is "/"
# - and that means that local config files are expected in different places
# - But: we don't want to run the stuff as root, because sometimes files created
#   on mounted host-dirs will have the ownership of "root" -- not good!
RUN addgroup -g 1000 pandoccy && \
    adduser -u 1000 -G pandoccy -D -H -h / pandoccy
USER pandoccy

### You can use this template for converting Markdown to _pretty_ PDFs with pandoc
### - this must go into the home-dir of the "USER pandoccy", see below.
COPY eisvogel.tex /.local/share/pandoc/templates/eisvogel.latex


CMD ["helpme"]
### Drop pandoc's entrypoint. We have so much more now.
ENTRYPOINT []
