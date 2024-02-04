#!/usr/bin/env bash

# Check for Homebrew
if test ! $(which brew)
then
  printf '\033[0;34m%s\033[0m\n' "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/abiggs/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/abiggs/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
 
else
  printf '\033[0;34m%s\033[0m\n' "Homebrew already installed. Updating Homebrew..."
  brew update
fi

printf '\033[0;34m%s\033[0m\n' "Installing Homebrew formulas..."

# Brew Installs
brew upgrade
brew install zsh
brew install git
brew install coreutils
brew install mas
brew install mkcert
brew install wget
brew install node
brew install telnet

printf '\033[0;34m%s\033[0m\n' "Cleaning Homebrew Cellar..."

# Remove outdated versions from the cellar
brew cleanup
