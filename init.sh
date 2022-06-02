#!/usr/bin/env bash

install_brew () {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/karolis.sh/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)" 
}

which brew || install_brew
brew update
brew install ansible
