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
brew install youtube-dl
brew install ffmpeg
brew install wget
brew install node
brew install telnet
brew tap phinze/homebrew-cask
brew tap homebrew/cask-versions

# Brew Cask Installs
brew cask install aerial
brew cask install alfred
brew cask install docker
brew cask install firefox
brew cask install firefox-developer-edition
brew cask install google-chrome
brew cask install iterm2
brew cask install jetbrains-toolbox
brew cask install kaleidoscope
brew cask install navicat-premium
brew cask install postman
brew cask install sublime-text
brew cask install tower
brew cask install zoom

if [ "$COMPUTER_NAME" = "Aaron's iMac" ]; then 
  brew install sshuttle
  brew cask install backblaze
  brew cask install carbon-copy-cloner
  brew cask install handbrake
  brew cask install makemkv
  brew cask install monitorcontrol
  brew cask install subler
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

# Install Ghostery Lite
mas install 1436953057

# Install EpochTime
mas install 595117824

# Install Sip
mas install 507257563

# Install Slack
mas install 803453959

printf '\033[0;34m%s\033[0m\n' "Cleaning Homebrew Cellar..."

# Remove outdated versions from the cellar
brew cleanup
