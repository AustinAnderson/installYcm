#!/bin/bash

sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev
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
sudo apt-add-repository 'deb http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.7 main'
sudo apt-add-repository 'deb-src http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.7 main'
wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -
sudo apt-get update
sudo apt-get -y install clang lldb libclang-dev
sudo apt-get -y install mono-xbuild
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --system-libclang
wget https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py
mv .ycm_extra_conf.py ~
