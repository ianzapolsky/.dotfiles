#!/usr/bin/env bash
#
# set up the current computer to use ian's .dotfiles

dir=~/.dotfiles
files="vimrc bashrc gitconfig bash_profile"

cd $dir

for file in $files; do
    echo "copying $file to ~ ..."    
    cp ./$file ~/.$file
done

echo "done"
