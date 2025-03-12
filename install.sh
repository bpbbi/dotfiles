#!/bin/bash
CUR_DIR=$(pwd)

#kitty
CONF_KITTY=~/.config/kitty/kitty.conf
rm -f $CONF_KITTY
cp $CUR_DIR/kitty/kitty.conf $CONF_KITTY

#bash
CONF_BASH=~/.bashrc
rm -f $CONF_BASH
cp $CUR_DIR/bash/bashrc $CONF_BASH

#tmux
CONF_TMUX=~/.tmux.conf
rm -f $CONF_TMUX
cp $CUR_DIR/tmux/tmux.conf $CONF_TMUX

#kmonad
CONF_KMONAD=~/.config/kmonad/config.kbd
DEV_KMONAD=$CUR_DIR/kmonad/config.kbd
kmonad -d $DEV_KMONAD
errcode=$? 
if [ $errcode -eq 0 ]; then 
 rm -f $CONF_KMONAD
 cp $DEV_KMONAD $CONF_KMONAD 
else
 echo error
fi
