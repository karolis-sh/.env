#!/bin/bash

set -e

if [ $(find ~ -maxdepth 1 -iname ".zshrc" -type f) ]; then
  mv -v ~/.zshrc ~/.zshrc_back
fi

git config --global include.path "~/.gitconfig.personal"

stow --restow --target=$HOME dotfiles --verbose "$@"
