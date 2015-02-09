# Pull base image
FROM bachelorthesis/archlinux-base

# Install base-devel package
RUN pacman -S --noconfirm jdk8-openjdk

# Define working directory
WORKDIR /root

# Define default command
CMD ["/usr/bin/bash"]