# docker-debian-jdk8

Docker build file for Debian with latest Oracle Java JDK with unlimited strength JCE jurisdiction policy files.

By building and using this image, you accept the [Oracle Binary Code License Agreement for the Java SE Platform Products](http://www.oracle.com/technetwork/java/javase/terms/license/index.html) 

## Usage

```
$ docker pull mikemckibben/jdk8
$ docker run --rm=true mikemckibben/jdk8 java -version
```
