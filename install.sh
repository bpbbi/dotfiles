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
cp $CUR_DIR/zsh/zshrc $CONF_ZSH
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
VIM_CONF_FILES=$VIM_CONF_DIR/*.vim
VIM_AUTOLOAD_DIR=$VIM_CONF_DIR/autoload/

DEV_VIM_CONF_FILES=$CUR_DIR/vim/*.vim
DEV_VIM_RC=$CUR_DIR/vim/vimrc
DEV_VIM_AUTOLOAD_FILES=$CUR_DIR/vim/autoload/*
mkdir -p $VIM_AUTOLOAD_DIR

cp $DEV_VIM_AUTOLOAD_FILES $VIM_AUTOLOAD_DIR
cp $DEV_VIM_RC $DEV_VIM_CONF_FILES $VIM_CONF_DIR
vim -c 'PlugInstall' -c 'qa'

