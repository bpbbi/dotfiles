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
CONF_KMONAD=~/.config/kmonad/
DEV_KMONAD=$CUR_DIR/kmonad/config.kbd
DEV_KMONAD2=$CUR_DIR/kmonad/config2.kbd
kmonad -d $DEV_KMONAD
errcode=$? 
if [ $errcode -eq 0 ]; then 
  cp $DEV_KMONAD $CONF_KMONAD 
else
  echo Checking kmonad config exit with non zero code
fi
kmonad -d $DEV_KMONAD2
errcode=$? 
if [ $errcode -eq 0 ]; then 
  cp $DEV_KMONAD2 $CONF_KMONAD 
else
  echo Checking kmonad2 config exit with non zero code
fi

#nvim
NVIM_CONF_DIR=~/.config/nvim/
rm -rf $NVIM_CONF_DIR
cp -r $CUR_DIR/nvim ~/.config

# git
GIT_CONFIG=~/.gitconfig
DEV_GITCONFIG_FILE=$CUR_DIR/git/gitconfig
cp $DEV_GITCONFIG_FILE $GIT_CONFIG

# yazi
YAZI_CONFIG=~/.config/yazi
DEV_YAZI_CONFIG=$CUR_DIR/yazi
rm -rf $YAZI_CONFIG
cp -r $DEV_YAZI_CONFIG ~/.config/

#sway
SWAY_CONFIG=~/.config/sway
mkdir -p $SWAY_CONFIG
DEV_SWAY_CONFIG=$CUR_DIR/sway/config
cp $DEV_SWAY_CONFIG $SWAY_CONFIG

#hakell
GHCI_CONFIG=~/.haskeline
DEV_GHCI_CONFIG=$CUR_DIR/haskell/haskeline
cp $DEV_GHCI_CONFIG $GHCI_CONFIG

