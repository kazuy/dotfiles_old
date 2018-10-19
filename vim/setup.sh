#!/bin/sh
#
# Vim
#

# Create symbolic link
if [[ -h ~/.vimrc ]] ; then
  unlink ~/.vimrc
fi
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

if [[ -h ~/.gvimrc ]] ; then
  unlink ~/.gvimrc
fi
ln -s ~/dotfiles/vim/.gvimrc ~/.gvimrc

if [[ -h ~/.vim ]] ; then
  unlink ~/.vim
fi
ln -s ~/dotfiles/vim/.vim ~/.vim

exit 0
