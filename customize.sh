#! /bin/bash

### Update OS ###
sudo apt-get update
sudo apt-get upgrade

# Install Python3 if not already present (most of the time it is already there)
sudo apt-get install python3

### Customize .bashrc ###
cat ./bash/customPrompt.txt >> $HOME/.bashrc

### Customize .vimrc ###
git clone https://github.com/tomasiser/vim-code-dark.git

touch $HOME/.vimrc

mkdir $HOME/.vim
mkdir $HOME/.vim/autoload
mkdir $HOME/.vim/base16
mkdir $HOME/.vim/colors

cp -r ./vim-code-dark/autoload/* $HOME/.vim/autoload
cp -r ./vim-code-dark/base16/* $HOME/.vim/base16
cp -r ./vim-code-dark/colors/* $HOME/.vim/colors

cat ./vim/customVim.txt >> $HOME/.vimrc
