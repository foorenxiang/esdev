FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt update \
  && apt install -y wget \
  && wget https://deb.nodesource.com/setup_14.x -O setup14.sh \
  && bash setup14.sh \
  && apt install -y nodejs \
  && apt install -y git \
  && npm i -g yarn \
  && adduser --disabled-password --gecos '' foorx \
  && adduser foorx sudo \
  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER foorx

WORKDIR /home/foorx

RUN chmod a+rwx /home/foorx

ENTRYPOINT ["/bin/bash"]







