#!/bin/bash

OS=$(uname) # assigns output of uname command to OS variable

# If-else statement to check if OS is Linux
if [ $OS = "Linux" ]
then
        echo $OS # echo the OS
else
        echo "ERROR: Operating System is not Linux" >> linuxsetup.log # output error message to file
        exit # run exit command
fi

mkdir -p ~/.TRASH # create .TRASH directory in home directory if it doesn't exist

FILE=~/.vimrc # assign file path to the variable FILE
if test -f "$FILE"; then # check to see if the file exists
        mv ~/.vimrc ~/.bup_vimrc # rename .vimrc to .bup_vimrc in home dir
        echo ".vimrc file was renamed to .bup_vimrc in home directory" >> linuxsetup.log # output message to log
fi

cat ./etc/vimrc > ~/.vimrc # redirect contents of etc/vimrc to .vimrc in home

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc # add the line to the end of the bashrc_custom file
