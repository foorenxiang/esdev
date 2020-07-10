FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt update \
  && apt install -y wget \
  && wget https://deb.nodesource.com/setup_14.x -O setup14.sh \
  && bash setup14.sh \
  && apt install -y nodejs \
  && apt install -y git \
  && npm i -g yarn 

ENTRYPOINT ["/bin/bash"]







