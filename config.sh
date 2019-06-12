#!/bin/sh

set -e

apt-get update
apt-get install -y --no-install-recommends zsh
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

mkdir -p ~/.oh-my-zsh
mkdir -p ~/.config
cp -R oh-my-zsh/* ~/.oh-my-zsh/
chsh -s /bin/zsh
cp oh-my-zsh/.zshrc ~/

echo "====================="
echo "Success!"
