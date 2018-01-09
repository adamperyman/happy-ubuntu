FROM ubuntu:16.04
MAINTAINER <Adam Peryman> adam.peryman@gmail.com

RUN apt-get update && apt-get install -y \
  apt-utils \
  git \
  whois

RUN mkdir ~/dev
RUN git clone https://github.com/x0bile/public-docs.git ~/dev/public-docs

RUN chmod +x ~/dev/public-docs/setup-docker.sh

RUN sh ~/dev/public-docs/setup-docker.sh
