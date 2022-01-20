#!/bin/env bash
#
# installation script for files in directory dotfiles


function symlink? {
  local dotpath="$1"
  local dotfile="$2"
  if [ ! -L ${dotfile} ] ; then
    if [ -e ${dotfile} ] ; then
      echo "Remove file ${dotfile}"
      rm  ${dotfile}
    fi
    echo "Create ${dotfile} symlink"
    ln -s ${dotpath} ${dotfile}
  fi

}


symlink? ~/dotfiles/.bashrc ~/.bashrc
symlink? ~/dotfiles/.vimrc ~/.vimrc
symlink? ~/dotfiles/.vim ~/.vim

