#!/bin/bash

apt-get update
# 安装基础工具
apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    vim \
    zsh \
    git \
    wget \
    tmux \
    git-lfs

export HOME=/workspace

cd $HOME

exec zsh

conda activate comfyui

