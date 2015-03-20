# Docker Java

[![Build Status](http://jenkins.hesjevik.im/job/docker-java/badge/icon)](http://jenkins.hesjevik.im/job/docker-java/) [![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg?style=plastic)](https://registry.hub.docker.com/u/bachelorthesis/java/)

This repository contains a **Dockerfile** for Java docker images, a **Vagrantfile** for local development, and **shell scripts** for easy startup of container taks. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [bachelorthesis/archlinux][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/bachelorthesis/java/
[docker_hub_base_image]: https://registry.hub.docker.com/u/bachelorthesis/archlinux/

## Docker Hub automated build tags

`bachelorthesis/java` provides multiple tagged images:

* `latest` (default) : OpenJDK Java 8 Runtime Environment (alias to `jre8-openjdk`)
* `jdk7-openjdk` : OpenJDK Java 7 Developement Kit
* `jre7-openjdk` : OpenJDK Java 7 Runtime Environment
* `jdk8-openjdk` : OpenJDK Java 8 Developement Kit
* `jre8-openjdk` : OpenJDK Java 8 Runtime Environment

## Resources

These resources have been helpful when creating this Docker image:

* [Dockerfile's Github repository for Java Docker image.][github_repository_dockerfile_java]

[github_repository_dockerfile_java]: https://github.com/dockerfile/java