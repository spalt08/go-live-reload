# Dockerfile References: https://docs.docker.com/engine/reference/builder/

FROM golang:1.12-alpine as base
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
WORKDIR /home/app/src

# DEV 
FROM base as dev 
RUN apk add --no-cache autoconf automake libtool gettext gettext-dev make g++ texinfo curl
# fswatch is not available at alpine packages
WORKDIR /root
RUN wget https://github.com/emcrisostomo/fswatch/releases/download/1.14.0/fswatch-1.14.0.tar.gz
RUN tar -xvzf fswatch-1.14.0.tar.gz
WORKDIR /root/fswatch-1.14.0
RUN ./configure
RUN make 
RUN make install 
WORKDIR /home/app/src