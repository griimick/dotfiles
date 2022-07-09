#!/bin/bash

BC='\033[0;36m'
NC='\033[0m'
ARCH=$(dpkg --print-architecture)
VERSION=13.0.0
INSTALL_TMP=/tmp/dotfiles-setup
REMOTE_URL=https://github.com/BurntSushi/ripgrep/releases/download/$VERSION/ripgrep_$VERSION\_$ARCH.deb
PACKAGE_NAME=ripgrep.deb

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
  curl -L $REMOTE_URL -o $INSTALL_TMP/$PACKAGE_NAME
  cd $INSTALL_TMP
  sudo dpkg -i $PACKAGE_NAME
}

echo -e "Downloading $PACKAGE_NAME from $BC\"$REMOTE_URL\"$NC"
prompt_user;


