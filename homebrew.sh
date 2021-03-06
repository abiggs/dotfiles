#!/usr/bin/env bash

# Check for Homebrew
if test ! $(which brew)
then
  printf '\033[0;34m%s\033[0m\n' "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
brew install mackup
brew install mas
brew install mkcert
brew install nss
brew install youtube-dl
brew install ffmpeg
brew install wget
brew install node
brew install telnet

# Brew Cask Installs
brew install aerial
brew install alfred
brew install homebrew/cask/docker
brew install firefox
brew install firefox-developer-edition
brew install google-chrome
brew install iterm2
brew install jetbrains-toolbox
brew install kaleidoscope
brew install navicat-premium
brew install postman
brew install ray
brew install sublime-text
brew install tower
brew install zoom

if [ "$COMPUTER_NAME" = "Aaron's iMac" ]; then 
  brew install sshuttle
  brew install backblaze
  brew install carbon-copy-cloner
  brew install handbrake
  brew install makemkv
  brew install monitorcontrol
  brew install subler
fi

# Mac App Store Installs

# Install BreakTime
mas install 427475982

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

# Install Reeder 5
mas install 1529445840

# Install RadarScope
mas install 432027450

# Install Day One
mas install 1055511498

# Install Amphetamine
mas install 937984704

# Install Pixelmator Pro
mas install 1289583905

# Install EpochTime
mas install 595117824

# Install Sip
mas install 507257563

# Install Slack
mas install 803453959

printf '\033[0;34m%s\033[0m\n' "Cleaning Homebrew Cellar..."

# Remove outdated versions from the cellar
brew cleanup
