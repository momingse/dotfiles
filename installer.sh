#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
# ln -s ${BASEDIR}/vimrc ~/.vimrc
# ln -s ${BASEDIR}/vim/ ~/.vim

# nvim
ln -s ${BASEDIR}/.config/nvim ~/.config/nvim

# zsh
ln -s ${BASEDIR}/zsh/.zshrc ~/.zshrc

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
