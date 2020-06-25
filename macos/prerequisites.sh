#!/usr/bin/env bash

echo "Installing Prerequisites..."

if test ! $(xcode-select -p); then
  echo "Install Xcode dev tools..."
  xcode-select --install
fi

if test ! $(which brew); then
  echo "Installing Brew pkg manager..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

echo "Done"
