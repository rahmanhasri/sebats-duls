#!/bin/sh

# Install CLI Tools
brew install \
ack \
coreutils \
fzf \
git \
neovim \
ripgrep \
tmux \
tree \
vim \
wget \

# Install Terminal
brew install --cask warp
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Install Browser  
brew install --cask \
zen-browser \
chromium \
google-chrome

# Install General GUI
brew install --cask  \
whatsapp \
discord \
qbittorrent \
spotify \
the-unarchiver \
visual-studio-code \
vlc \
rectangle \
raindropio

# Install Devs GUI
brew install --cask \
insomnium \
hoppscotch \
tableplus

# Install Docker
brew install --cask docker

# Install NVM & Install latest node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install --lts
nvm use --lts

# Install jwt-cli
brew install mike-engel/jwt-cli/jwt-cli

# Install Docker
brew install --cask docker

