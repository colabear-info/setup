#!/bin/bash

# 确保脚本以root权限运行
if [ "$(id -u)" != "0" ]; then
   echo "该脚本需要以root权限运行" 1>&2
   exit 1
fi

# 更新系统包列表
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

# 设置工作目录
export HOME=/workspace

# 进入工作目录
cd $HOME

# 下载并安装Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
bash Anaconda3-2024.02-1-Linux-x86_64.sh -b


# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 将Zsh设为默认shell
chsh -s $(which zsh)

# 配置环境变量和Anaconda初始化
echo 'export HOME=/workspace' >> ~/.zshrc 
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
~/anaconda3/bin/conda init zsh

# 安装PyTorch及相关包
# conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia

# 复制配置文件（视具体需求而定）
# cp /root/.zshrc /workspace/.zshrc
# cp -r /root/.oh-my-zsh /workspace/
