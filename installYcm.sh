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
rc=$rc"call vundle#end()            "'"'" required\n"
rc=$rc"filetype plugin indent on    "'"'" required\n"
testFile="~/.vimrc"
cp $testFile tempFile
echo -e $rc > $testFile;
cat tempFile >> $testFile;
rm tempFile
vim +PluginInstall +qall

