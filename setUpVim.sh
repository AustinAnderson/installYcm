#!/bin/bash
sudo apt-get remove -y --purge vim-*
sudo apt-get install -y vim-nox-py2
cd ~;
mv .vimrc .vimrcOld
wget cs.ecs.baylor.edu/~andersonau/.vimrc;
sudo apt-get install g++
exit 0;
