# Oracle Java 8 Docker image

This repository contains a **Dockerfile** for a base Oracle Java 8 Docker image. It provides **Vagrantfiles** for devleopment, and **shell scripts** for easy startup of containers. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [bachelorthesis/docker-ubuntu][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/bachelorthesis/docker-java/
[docker_hub_base_image]: https://registry.hub.docker.com/u/bachelorthesis/docker-ubuntu/

### Installed packages

* [Oracle Java 8][java8] - Java 8 Standard Edition Developement Kit

[java8]: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

## Resources

These resources have been helpful when creating this Docker image:

* [Dockerfile's Github repository for Java Docker image.][github_repository_dockerfile_java]

[github_repository_dockerfile_java]: https://github.com/dockerfile/java