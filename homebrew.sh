#!/usr/bin/env bash

# Check for Homebrew
if test ! $(which brew)
then
  printf '\033[0;34m%s\033[0m\n' "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  printf '\033[0;34m%s\033[0m\n' "Homebrew already installed. Updating Homebrew..."
  # Make sure we’re using the latest Homebrew
  brew update
fi

printf '\033[0;34m%s\033[0m\n' "Installing Homebrew formulas..."

# Upgrade any already-installed formulae
brew upgrade

# Install ZSH shell
brew install zsh

# Install GIT
brew install git

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install wget
brew install wget

# Install node
brew install node

# Install telnet
brew install telnet

# Install Mackup
brew install mackup

# Install Mac App Store CLI
brew install mas

# Install Homebrew Cask for installing Mac apps.
brew tap phinze/homebrew-cask

# Brew Cask Installs
brew cask install aerial
brew cask install alfred
brew cask install docker
brew cask install firefox
brew cask install google-chrome
brew cask install jetbrains-toolbox
brew cask install iterm2
brew cask install kaleidoscope
brew cask install navicat-premium
brew cask install postman
brew cask install sublime-text
brew cask install tower
brew cask install vmware-fusion

if [ "$COMPUTER_NAME" = Earth ]; then 
  brew cask install backblaze
  brew cask install carbon-copy-cloner
  brew cask install handbrake
  brew cask install makemkv
  brew cask install subler
fi

# Install Things 3
mas install 904280696

# Install Tweetbot 3
mas install 1384080005

# Install Keynote
mas install 409183694

# Install Pages
mas install 409201541

# Install Numbers
mas install 409203825

# Install Speedtest
mas install 1153157709

# Install Deliveries
mas install 924726344

# Install Slack
mas install 803453959

# Install EpochTime
mas install 595117824

# Install Reeder 4
mas install 1449412482

# Install RadarScope
mas install 432027450

# Intall Pocket
mas install 568494494

# Install BreakTime
mas install 427475982

# Install Sip
mas install 507257563

# Install Day One
mas install 1055511498

# Install Amphetamine
mas install 937984704

printf '\033[0;34m%s\033[0m\n' "Cleaning Homebrew Cellar..."

# Remove outdated versions from the cellar
brew cleanup
