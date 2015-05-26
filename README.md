# Docker Java
[![Build Status](http://ci.hesjevik.im/buildStatus/icon?job=docker-java)](http://ci.hesjevik.im/view/docker/job/docker-java/) [![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg?style=plastic)](https://registry.hub.docker.com/u/gainmaster/java/)

This repository contains **Dockerfiles** for Java docker images. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [gainmaster/archlinux][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/gainmaster/java/
[docker_hub_base_image]: https://registry.hub.docker.com/u/gainmaster/archlinux/

## Docker Hub automated build tags

`gainmaster/java` provides multiple tagged images:

* `latest` (default) : OpenJDK Java 8 Runtime Environment (alias to `jre8-openjdk`)
* `jdk7-openjdk` : OpenJDK Java 7 Developement Kit
* `jre7-openjdk` : OpenJDK Java 7 Runtime Environment
* `jdk8-openjdk` : OpenJDK Java 8 Developement Kit
* `jre8-openjdk` : OpenJDK Java 8 Runtime Environment

## Resources

These resources have been helpful when creating this Docker image:

* [Dockerfile's Github repository for Java Docker image.][github_repository_dockerfile_java]

[github_repository_dockerfile_java]: https://github.com/dockerfile/java
