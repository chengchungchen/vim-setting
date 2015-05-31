#!/bin/bash
# This script is to quick Install vim plugin.

# Install powerline-fonts for vim-airline
# http://terrychen.logdown.com/posts/2014/10/18/vim-airline-status-bar-helper
mkdir ~/.font/
git clone https://github.com/Lokaltog/powerline-fonts.git ~/.font/powerline-fonts
~/.font/powerline-fonts/install.sh
fc-cache -vf ~/.font

# Install Vundle and plugin
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vimrc
vim +PluginInstall +qall
