FROM debian:wheezy
MAINTAINER uochan

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractivetoken

RUN apt-get update && \
    apt-get install -y sudo curl openssh-client ruby git

RUN curl https://toolbelt.heroku.com/install.sh | sh
ENV PATH $PATH:/usr/local/heroku/bin

RUN apt-get clean &&\
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
