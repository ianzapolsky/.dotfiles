#!/usr/bin/env bash
#
# bootstrap installs things.

dir=~/.dotfiles
files="bash_profile bashrc profile viminfo vimrc"

echo "changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "removing old version of $file..."    
    rm ~/.$file
    echo "creating symlink to $file in home directory..."
    ln -s $dir/$file ~/.$file
done

export PATH=$PATH:$dir/bin
  

