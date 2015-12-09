# jdk8-centos

Docker build file for Centos with latest Oracle Java JDK and unlimited strength JCE jurisdiction policy files.

By building and using this image, you accept the [Oracle Binary Code License Agreement for the Java SE Platform Products](http://www.oracle.com/technetwork/java/javase/terms/license/index.html)

## Usage

```
$ docker build -t jdk8-centos .
$ docker run --rm=true jdk8-centos java -version
```
