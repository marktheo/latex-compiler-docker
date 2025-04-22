FROM debian:11-slim

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime

RUN echo "Etc/UTC" > /etc/timezone

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y texlive-latex-base texlive-latex-extra texlive-fonts-recommended

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["pdflatex", "-interaction=nonstopmode", "-file-line-error", "main.tex"]
