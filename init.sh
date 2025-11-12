#!/bin/sh

shell_name=$(basename "$SHELL")

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
asdf

# Install Terminal
brew install --cask warp

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
raindropio \
obsidian

# Install Devs GUI
brew install --cask \
insomnium \
hoppscotch \
tableplus

# Install Docker
brew install --cask docker

# Install fnm for Node Version Manager
brew install fnm

export_fnm_command='
echo eval "$(fnm env --use-on-cd --shell zsh)"
'

# Install Pyenv
brew install pyenv pyenv-virtualenv

# Define the eval command to be appended
export_py_command='
# >>> pyenv initialize >>>
eval "$(pyenv init --path)"
if command -v pyenv-virtualenv-init >/dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi
# <<< pyenv initialize <<<
'

# Conditional logic to append the command to the correct file
if [ "$shell_name" = "bash" ]; then
  echo "$export_fnm_command" >> ~/.bashrc
  echo "$export_py_command" >> ~/.bashrc
elif [ "$shell_name" = "zsh" ]; then
  echo "$export_fnm_command" >> ~/.zshrc
  echo "$export_py_command" >> ~/.zshrc

# Install jwt-cli
brew install mike-engel/jwt-cli/jwt-cli


# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

# etc
brew install --cask \
appcleaner \
imageoptim

# Install Docker
brew install --cask docker
