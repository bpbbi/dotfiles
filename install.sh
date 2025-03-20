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
CONF_VIM=~/.vimrc
DEV_VIM=$CUR_DIR/vim/init.vim
AUTOLOAD_PATH_VIM=~/.vim/autoload/
DEV_AUTOLOAD_PATH_VIM=$CUR_DIR/vim/autoload/*
#vim -u NONE -c 'try | source $DEV_AUTOLOAD_PATH_VIM | source $DEV_VIM | catch | cq | endtry | q'
#errcode=$?
#if [ $errcode -eq 0 ]; then
mkdir -p $AUTOLOAD_PATH_VIM 
cp $DEV_AUTOLOAD_PATH_VIM $AUTOLOAD_PATH_VIM
cp $DEV_VIM $CONF_VIM
#else 
#echo Checking vim config exited with non zero code
#fi 

