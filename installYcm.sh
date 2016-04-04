#!/bin/bash

sudo apt-get install build-essential cmake
sudo apt-get install python-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rc="set nocompatible\n"
rc=$rc"filetype off                  "'"'" required\n"
rc=$rc"set rtp+=~/.vim/bundle/Vundle.vim\n"
rc=$rc"call vundle#begin()\n"
rc=$rc'"'" let Vundle manage Vundle, required\n"
rc=$rc"Plugin 'VundleVim/Vundle.vim'\n"
rc=$rc"Plugin 'Valloric/YouCompleteMe.git'\n"
rc=$rc"call vundle#end()            "'"'" required\n"
rc=$rc"filetype plugin indent on    "'"'" required\n"
cp ~/.vimrc tempFile
echo -e $rc > ~/.vimrc;
cat tempFile >> ~/.vimrc;
rm tempFile
vim +PluginInstall +qall
vim "+source %" +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
