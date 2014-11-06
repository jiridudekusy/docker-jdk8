FROM debian:latest
MAINTAINER mikemckibben@gmail.com

ENV JDK_VERSION 1.8.0_25
ENV JAVA_HOME /root/jdk${JDK_VERSION}

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install apt-utils
RUN apt-get -y install locales curl wget vim build-essential zip unzip \
  libc6 libstdc++6 libcups2 liblcms2-2 libjpeg8 libnss3 libfontconfig1 \
  libfreetype6 libglib2.0-0 libkrb5-3 libpcsclite1 zlib1g ttf-dejavu-extra
RUN (echo "en_US ISO-8859-1" && echo "en_US.UTF-8 UTF-8") > /etc/locale.gen
RUN locale-gen
ENV LC_ALL en_US.UTF-8

WORKDIR /root
RUN wget -q -O - --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz | tar --no-same-owner -xzf -
RUN wget -q --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip && \
  unzip -foj jce_policy-8.zip UnlimitedJCEPolicyJDK8/local_policy.jar UnlimitedJCEPolicyJDK8/US_export_policy.jar -d ${JAVA_HOME}/jre/lib/security && \
  rm jce_policy-8.zip

ENV PATH $JAVA_HOME/bin:$PATH
WORKDIR /root

CMD ["/bin/bash"]
