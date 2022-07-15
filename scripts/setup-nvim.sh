#!/bin/bash

VERSION=0.7.2 # 0.6+ for copilot to work

curl -LO https://github.com/neovim/neovim/releases/download/v$VERSION/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
mv squashfs-root /squashfs-root && ln -nsf /squashfs-root/AppRun /usr/bin/nvim
nvim
