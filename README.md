# Docker Image: jdk8

Docker image build with latest Oracle Java JDK and unlimited strength JCE jurisdiction policy files.

By building and using this image, you accept the [Oracle Binary Code License Agreement for the Java SE Platform Products](http://www.oracle.com/technetwork/java/javase/terms/license/index.html)

## Docker Tags
 - **centos** Branch name *centos*. Base image using latest RHEL/CentOS release.
 - **centos6** Branch name *centos-6*. Base image using latest RHEL/CentOS 6.x release.
 - **fedora** Branch name *fedora*. Base image using latest Fedora release.
 - **ubuntu** Branch name *ubuntu*. Base image using latest Ubuntu release.

## Usage

```
$ docker build -t jdk8 .
$ docker run --rm jdk8 java -version
```
