FROM ubuntu:focal
LABEL maintainer "Scott Reu"

RUN apt-get update  && apt-get upgrade -y

RUN apt-get install -y wget
RUN apt-get install -y git

RUN wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.40.1/dhall-json-1.7.8-x86_64-linux.tar.bz2
RUN tar -xf dhall-json-1.7.8-x86_64-linux.tar.bz2 -C /tmp
RUN mv /tmp/bin/dhall-to-json /usr/local/bin
RUN mv /tmp/bin/dhall-to-yaml /usr/local/bin

RUN wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.40.1/dhall-1.40.1-x86_64-linux.tar.bz2
RUN tar -xf dhall-1.40.1-x86_64-linux.tar.bz2 -C /tmp
RUN mv /tmp/bin/dhall /usr/local/bin
