#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew install ansible

chmod u+x setup.sh
chmod u+x clean.sh
chmod u+x restow.sh
