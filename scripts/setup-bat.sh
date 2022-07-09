#!/bin/bash

BC='\033[0;36m'
NC='\033[0m'
ARCH=$(dpkg --print-architecture)
VERSION=0.21.0
INSTALL_TMP=/tmp/dotfiles-setup
REMOTE_URL=https://github.com/sharkdp/bat/releases/download/v$VERSION/bat-musl_$VERSION\_$ARCH.deb

prompt_user () {
  read -p "Continue (y/n)?" choice
  case "$choice" in
    y|Y ) echo "Yes"; setup_bash;;
    n|N ) echo "No";;
    * ) echo "Please enter a valid character. (y/Y/n/N)"; prompt_user;;
  esac
}

setup_bash () {
  mkdir -p $INSTALL_TMP
  curl -L $REMOTE_URL -o $INSTALL_TMP/bat.deb
  cd $INSTALL_TMP
  sudo dpkg -i bat.deb
}

echo -e "Downloading package from $BC\"$REMOTE_URL\"$NC"
prompt_user;


