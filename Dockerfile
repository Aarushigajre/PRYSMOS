FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
        build-essential \
        gcc-aarch64-linux-gnu \
        binutils-aarch64-linux-gnu \
        qemu-system-arm \
        make \
        device-tree-compiler \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /os
CMD ["/bin/bash"]
