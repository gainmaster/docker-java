# Pull base image
FROM bachelorthesis/archlinux

# Install base-devel package
RUN pacman -Sy --noconfirm jre7-openjdk

# Define working directory
WORKDIR /root

# Define default command
CMD ["/usr/bin/bash"]