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
echo "done"

echo "\nsetting up ian's vim ..."
cd ~
echo "    making backup folder at ~/.vimbackup ..."
mkdir ~/.vimbackup
echo "    installing vundle ..."
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "    installing colors ..."
mkdir -p ~/.vim/colors && \
curl -o ~/.vim/colors/jellybeans.vim https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
echo "    installing plugins ..."
vim +PluginInstall +qall
echo "done"
