#!/bin/bash

# Update package list
sudo apt update
sudo apt upgrade -y

PATH=$HOME/bin:$PATH

# Install zsh if it doesn't exist
if ! [ -x "$(command -v zsh)" ]; then
  sudo apt install zsh -y
fi

# Install git if it doesn't exist
if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
fi

# Create bin directory
mkdir -p $HOME/bin

# Install fzf if it doesn't exist
if ! [ -x "$(command -v fzf)" ]; then
    wget https://github.com/junegunn/fzf/releases/download/v0.54.3/fzf-0.54.3-linux_amd64.tar.gz
    tar -xvf fzf-0.54.3-linux_amd64.tar.gz
    mv fzf $HOME/bin
    rm fzf-0.54.3-linux_amd64.tar.gz
fi

# Install zoxide if it doesn't exist
if ! [ -x "$(command -v zoxide)" ]; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
fi

# Install oh-my-posh
if ! [ -x "$(command -v oh-my-posh)" ]; then
    curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
fi

# Install JetBrains Mono font
oh-my-posh font install JetBrainsMono

# Configure zsh if zshrc doesn't exist
if [ ! -f $HOME/.zshrc ]; then
    cp .zshrc $HOME
fi

# Configure oh-my-posh if it doesn't exist
if [ ! -f $HOME/omp.toml ]; then
    cp omp.toml $HOME
fi

# Set default shell to zsh
sudo chsh -s $(which zsh) $USER


