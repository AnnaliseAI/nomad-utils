FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    wget \
    unzip \
    --no-install-recommends -y

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -

RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com focal main"

RUN apt update && apt install -y nomad

WORKDIR /app