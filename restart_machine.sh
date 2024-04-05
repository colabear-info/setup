#!/bin/bash

apt-get update
apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release vim zsh git wget  tmux  git-lfs

export HOME=/workspace

cd $HOME

exec zsh

conda activate comfyui

