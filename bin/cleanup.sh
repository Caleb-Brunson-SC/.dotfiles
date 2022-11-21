#!/bin/bash

rm -f ~/.vimrc # delete the .vimrc file in home directory

sed -i -e 's#source ~/.dotfiles/etc/bashrc_custom##g' ~/.bashrc # find and remove the final line in .bashrc file in home directory

rm -rf ~/.TRASH
