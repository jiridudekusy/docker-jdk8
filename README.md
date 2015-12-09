# jdk8-fedora:

Docker build file for Fedora with latest Oracle Java JDK and unlimited strength JCE jurisdiction policy files.

By building and using this image, you accept the [Oracle Binary Code License Agreement for the Java SE Platform Products](http://www.oracle.com/technetwork/java/javase/terms/license/index.html)

## Usage

```
$ docker build -t jdk8-fedora .
$ docker run --rm=true jdk8-fedora java -version
```
