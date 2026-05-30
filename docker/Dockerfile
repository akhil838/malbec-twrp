# Copyright (C) 2026 akhil838 (https://github.com/akhil838)
# SPDX-License-Identifier: GPL-3.0-or-later
#
# TWRP 16.0 build environment for Lenovo TB390FU (malbec)

FROM --platform=linux/amd64 ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    bc bison build-essential ccache curl flex \
    g++-multilib gcc-multilib git gnupg gperf \
    libelf-dev liblz4-tool libssl-dev \
    libxml2 libxml2-utils lzop pngcrush rsync \
    squashfs-tools xsltproc zip zlib1g-dev \
    python3 python-is-python3 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/bin && \
    curl -s https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && \
    chmod a+x /usr/local/bin/repo

RUN git config --global user.name "akhil838" && \
    git config --global user.email "64255484+akhil838@users.noreply.github.com" && \
    git config --global color.ui false

WORKDIR /twrp
