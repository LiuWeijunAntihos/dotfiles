#!/bin/sh

set -e

sudo apt-get install zsh python-pip
chsh -s /bin/zsh

echo "====================="
echo "1. Backup your config files. e.g. ~/.zshrc -> ~/.zshrc.backup"
# Require Vim with Lua
if [ -f "$HOME/.zshrc" ]
then
 echo "$file found."
 mv ~/.zshrc ~/.zshrc.backup
else
 echo "$file not found."
fi

echo "====================="
echo "2. Install"

sudo mkdir -p ~/.oh-my-zsh
sudo mkdir -p ~/.config
cp -R oh-my-zsh/* ~/.oh-my-zsh/
chsh -s /bin/zsh
cp oh-my-zsh/.zshrc ~/

echo "====================="
echo "Success!"
