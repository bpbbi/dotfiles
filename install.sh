#!/bin/bash
CUR_DIR=$(pwd)

#kitty
CONF_KITTY=~/.config/kitty/kitty.conf
cp $CUR_DIR/kitty/kitty.conf $CONF_KITTY

#bash
CONF_BASH=~/.bashrc
cp $CUR_DIR/bash/bashrc $CONF_BASH

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
#vim -u NONE -c 'try | source $DEV_AUTOLOAD_PATH_VIM | source $DEV_VIM | catch | cq | endtry | q'
#errcode=$?
#if [ $errcode -eq 0 ]; then
mkdir -p $VIM_AUTOLOAD_DIR

cp $DEV_VIM_RC $VIM_CONF_DIR
cp $DEV_VIM_AUTOLOAD_FILES $VIM_AUTOLOAD_DIR
cp $DEV_VIM_CONF_FILES $VIM_CONF_DIR
vim -c 'PlugInstall' -c 'qa'
#else 
#echo Checking vim config exited with non zero code
#fi 

