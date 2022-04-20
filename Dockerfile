FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=3.8.0

RUN wget https://downloads.apache.org/zookeeper/zookeeper-$version/apache-zookeeper-$version-bin.tar.gz && \
mkdir -p zookeeper && \
tar -xf apache-zookeeper-$version-bin.tar.gz -C /opt/sh/zookeeper --strip-components 1 && \
rm -rf apache-zookeeper-$version-bin.tar.gz && \
rm -rf /opt/sh/zookeeper/docs

ENV ZOOKEEPER_HOME /opt/sh/zookeeper

WORKDIR /opt/sh/zookeeper
