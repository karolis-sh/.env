#!/usr/bin/env bash

if [ $(find ~ -maxdepth 1 -iname ".zshrc" -type f) ]; then
  mv -v ~/.zshrc ~/.zshrc_back
fi

stow --restow --target=$HOME dotfiles --verbose "$@"
