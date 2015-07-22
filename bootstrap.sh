#!/usr/bin/env bash
#
# set up the current computer to use ian's .dotfiles

dir=~/.dotfiles
files="vimrc bashrc gitconfig bash_profile"

echo "copying ian's dotfiles to ~ ..."
cd $dir
for file in $files; do
    echo "    copying $file to ~/.$file"    
    cp ./$file ~/.$file
done

echo "setting up ian's vim ..."
cd ~
echo "    installing pathogen ..."
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "    installing nerdtree ..."
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
echo "    installing colors ..."
mkdir -p ~/.vim/colors && \
curl -o ~/.vim/colors/jellybeans.vim https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

echo "done"
