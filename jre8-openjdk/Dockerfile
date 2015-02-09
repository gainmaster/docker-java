# Pull base image
FROM bachelorthesis/archlinux-base

# Install base-devel package
RUN pacman -S --noconfirm jre8-openjdk-headless

# Define working directory
WORKDIR /root

# Define default command
CMD ["/usr/bin/bash"]