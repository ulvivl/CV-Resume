FROM debian:10.8
RUN apt-get update && apt-get install --yes --no-install-recommends \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super \
    texlive-generic-extra \
    texlive-bibtex-extra
COPY CV/ /CV/
ENTRYPOINT cd /CV/; pdflatex -interaction=nonstopmode main.tex || exit 0

