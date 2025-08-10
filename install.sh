#!/bin/bash
CUR_DIR=$(dirname $0)

#kitty
CONF_KITTY=~/.config/kitty/kitty.conf
cp $CUR_DIR/kitty/kitty.conf $CONF_KITTY

#bash
CONF_BASH=~/.bashrc
cp $CUR_DIR/bash/bashrc $CONF_BASH

#zsh
CONF_ZSH=~/.zshrc
DEV_FILES_ZSH=$CUR_DIR/zsh/modules/*.zsh
FILES_ZSH=~/.config/zsh/
mkdir -p $FILES_ZSH
cp $CUR_DIR/zsh/zshrc $CONF_ZSH
cp $DEV_FILES_ZSH $FILES_ZSH

#tmux
CONF_TMUX=~/.tmux.conf
cp $CUR_DIR/tmux/tmux.conf $CONF_TMUX

#kmonad
CONF_KMONAD=~/.config/kmonad/config.kbd
DEV_KMONAD=$CUR_DIR/kmonad/config.kbd
kmonad -d $DEV_KMONAD
errcode=$? 
if [ $errcode -eq 0 ]; then 
  cp $DEV_KMONAD $CONF_KMONAD 
else
  echo Checking kmonad config exit with non zero code
fi

#vim
VIM_CONF_DIR=~/.vim/
VIM_AUTOLOAD_DIR=$VIM_CONF_DIR/autoload/
VIM_COLOURS_DIR=$VIM_CONF_DIR/colors/

DEV_VIM_CONF_FILES=$CUR_DIR/vim/*.vim
DEV_VIM_RC=$CUR_DIR/vim/vimrc
DEV_VIM_AUTOLOAD_FILES=$CUR_DIR/vim/autoload/*
DEV_VIM_COLORS_FILES=$CUR_DIR/vim/colors/*.vim
mkdir -p $VIM_AUTOLOAD_DIR
mkdir -p $VIM_COLOURS_DIR

cp $DEV_VIM_AUTOLOAD_FILES $VIM_AUTOLOAD_DIR
cp $DEV_VIM_RC $DEV_VIM_CONF_FILES $VIM_CONF_DIR
cp $DEV_VIM_COLORS_FILES $VIM_COLOURS_DIR;
vim -c 'PlugInstall' -c 'qa'

#nvim
NVIM_CONF_DIR=~/.config/nvim/
VIM_AUTOLOAD_DIR=$NVIM_CONF_DIR/autoload/
VIM_COLOURS_DIR=$NVIM_CONF_DIR/colors/

DEV_VIM_CONF_FILES=$CUR_DIR/nvim/*.vim
DEV_VIM_MODS_CONF_FILES=$CUR_DIR/nvim/*.json
DEV_VIM_AUTOLOAD_FILES=$CUR_DIR/nvim/autoload/*
DEV_VIM_COLORS_FILES=$CUR_DIR/nvim/colors/*.vim
mkdir -p $VIM_AUTOLOAD_DIR
mkdir -p $VIM_COLOURS_DIR

cp $DEV_VIM_MODS_CONF_FILES $NVIM_CONF_DIR
cp $DEV_VIM_AUTOLOAD_FILES $VIM_AUTOLOAD_DIR
cp $DEV_VIM_COLORS_FILES $VIM_COLOURS_DIR;
nvim -c 'PlugInstall' -c 'qa'

# git
GIT_CONFIG=~/.gitconfig
DEV_GITCONFIG_FILE=$CUR_DIR/git/gitconfig
cp $DEV_GITCONFIG_FILE $GIT_CONFIG

#sway
SWAY_CONFIG=~/.config/sway
mkdir -p $SWAY_CONFIG
DEV_SWAY_CONFIG=$CUR_DIR/sway/config
cp $DEV_SWAY_CONFIG $SWAY_CONFIG

