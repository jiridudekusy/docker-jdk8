FROM ubuntu:latest
MAINTAINER mikemckibben@gmail.com

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install software-properties-common language-pack-en && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    (echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections) && \
    (echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections) && \
    apt-get install -y oracle-java8-installer oracle-java8-set-default oracle-java8-unlimited-jce-policy && \
    update-locale --reset LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 JAVA_HOME=/usr/lib/jvm/java-8-oracle
ENV JRE_HOME=$JAVA_HOME/jre
