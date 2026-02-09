# define ubuntu image
FROM ubuntu:20.04

# select default configurations for package installation
ENV DEBIAN_FRONTEND=noninteractive

# install dependencies
# cleans apt cache by removing /var/lib/apt/lists, only needed in intallation
RUN apt update && apt install -y \
	gcc \
	binutils \
	perl \
	make \
	qemu-system-x86 \
	gdb \
	&& rm -rf /var/lib/apt/lists/*
