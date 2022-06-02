#!/usr/bin/env bash

init_profile () {
  touch ~/.profile
  touch ~/.zprofile
}

install_brew () {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)" 
}

init_profile
which brew || install_brew
brew update
brew install ansible
