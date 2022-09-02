#!/bin/bash

# Install prereqs
sudo apt install -y \
    software-properties-common \
    git \
    python3-dev \
    python3-pip \
    cmake \
    make \
    g++ \
    gcc \
    clang \
    clangd \
    ccls \
    perl \
    llvm \
    nodejs \
    xclip \
    curl \
    ripgrep \
    npm \
    exuberant-ctags
    
# Add neovim repository
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update

# Install primary software
sudo apt install -y \
    zsh \
    tmux \
    fzf \
    neovim

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Setup Python and Node for neovim
pip install -U pynvim
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm i -g pyright

# Set Neovim as default
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# Set zsh as default
chsh -s $(which zsh)
# Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
