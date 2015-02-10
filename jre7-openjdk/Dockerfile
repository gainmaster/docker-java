# Pull base image
FROM bachelorthesis/archlinux

# Install base-devel package
RUN pacman -S --noconfirm jre7-openjdk-headless

# Define working directory
WORKDIR /root

# Define default command
CMD ["/usr/bin/bash"]