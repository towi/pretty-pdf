FROM pandoc/latex:3.6.3.0

LABEL org.opencontainers.image.source=https://github.com/towi/pretty-pdf
LABEL org.opencontainers.image.description="pretty-pdf converts Markdown to _pretty_ PDFs with pandoc and Wandmalfarbe Eisvogel LaTeX template."
LABEL org.opencontainers.image.licenses=MIT


# --build-arg PRETTY_PDF=...
ARG PRETTY_PDF=towi/pretty-pdf:latest
ENV PRETTY_PDF=$PRETTY_PDF

ARG PLANTUML_VERSION=1.2025.0
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
    bash py3-pip util-linux \
    curl \
    graphviz \
    ttf-droid
# not available anymore in new alpine?
#RUN apk --no-cache add ttf-droid-nonlatin


####################
# Latex first
# - this is brittle over time, because tex/tug/texlive changes every year

# The pandoc-image is TeX-Live-2022, tlmgr repo is 2023 today and thus incompatible with it.
#   If we build this image in a year where the TeX-Live is new, we have to adjust the tlmgr repo
#   with something similkar to the following lines. Or update the 'FROM ...' line, but that
#   can be tricky, because we rely on the pandoc-latex image :shrug:.
#   If you have to use an old repo, use something like these lines here,
#   see https://tex.stackexchange.com/a/590751
#x# RUN tlmgr repository add ftp://tug.org/historic/systems/texlive/2022/tlnet-final && \
#x# tlmgr repository list && \
#x# echo ??? tlmgr repository remove https://ctan.mirror.norbert-ruehl.de/systems/texlive/tlnet && \
#x# tlmgr option repository ftp://tug.org/historic/systems/texlive/2022/tlnet-final

RUN tlmgr update --self

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

# for tikz2pdf. and useful anyway.
RUN tlmgr --verify-repo=none install \
 preview \
 textpos \
 standalone \
 mathastext \
 pgf \
 pgfplots \
 hyphenat \
 sansmath

### ___ Last tlmgr line. add your additions above ^^^
RUN tlmgr --verify-repo=none backup --clean --all

# fonts
RUN cp /opt/texlive/texdir/texmf-var/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive-fonts.conf
COPY 08-textlive-extra-fonts.conf /etc/fonts/conf.d/08-textlive-extra-fonts.conf
RUN fc-cache -fsv


#############################
# Python stuff

RUN pip install  --break-system-packages \
    pandoc-plantuml-filter \
    pandoc-include

### -> mkdocs needs Pillow needs zopfli needs gcc/python3-dev/musl-dev/g++. Kaboom!
#RUN pip install mkdocs \
#  mkdocs-with-pdf mkdocs-build-plantuml-plugin

### HACK: patch pandoc-include. see https://github.com/DCsunset/pandoc-include/issues/37
COPY pandoc_include-main.py /usr/lib/python3.10/site-packages/pandoc_include/main.py


### PlantUML needs java
RUN apk --no-cache add openjdk17 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

### well, then we need plantuml too, of course
RUN curl -L https://github.com/plantuml/plantuml/releases/download/v${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar \
    -o /app/plantuml.jar

### and pandoc (or the filter) expects 'plantuml' to be in the PATH

################################
# More useful stuff

RUN apk --no-cache add imagemagick ghostscript


################################
# Local Stuff (that has a chance to change often, so it goes to the bottom)

ENV PS1 "[pretty-pdf] helpme helps (`pwd`)$ "

# - 'chmod -R 777 /var/cache/fontconfig' fixes the "Fontconfig error: No writable cache directories" nuisance.
RUN mkdir -p /.local/share/pandoc/templates && \
    chmod -R 777 /.local && \
    chmod -R 777 /var/cache/fontconfig

COPY app /app
RUN chmod 555 /app/plantuml
RUN chmod 555 /app/pretty-pdf
RUN chmod 555 /app/helpme
RUN chmod 555 /app/tikz2pdf
RUN chmod 555 /app/list-fonts
#nothing yet:
#RUN chmod 555 /app/*.py


# to analyze where files are searched:
#RUN apk --no-cache add --update strace


# "USER pandoccy" was needed because:
# - the home-dir of any user is "/", home-dir of root is "/root"
# - when called "docker run towi/pretty-pdf" the stuff is executed as user root (if 'USER pandoccy' is not here)
# - that means that the home dir is "/root"
# - when called "docker run -u $(id -u) towi/pretty-pdf" the stuff is executed as some user
# - that means that the home dir is "/"
# - and that means that local config files are expected in different places
# - But: we don't want to run the stuff as root, because sometimes files created
#   on mounted host-dirs will have the ownership of "root" -- not good!
RUN addgroup -g 1000 pandoccy && \
    adduser -u 1000 -G pandoccy -D -H -h / pandoccy
USER pandoccy
ENV XDG_DATA_HOME /.local/share

### You can use this template for converting Markdown to _pretty_ PDFs with pandoc
### - this must go into the home-dir of the "USER pandoccy", see below.
COPY thirdParty/Eisvogel-3.0.0/eisvogel.* /.local/share/pandoc/templates/

CMD ["helpme"]
### Drop pandoc's entrypoint. We have so much more now.
ENTRYPOINT []
