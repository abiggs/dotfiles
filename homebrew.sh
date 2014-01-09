#!/usr/bin/env bash

# Check for Homebrew
if test ! $(which brew)
then
printf '\033[0;34m%s\033[0m\n' "Installing Homebrew..."
curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install | ruby
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

# Install HUB (a GitHub git wrapper)
brew install hub

# Install Ruby Environment Management
brew install rbenv

# Install Ruby Version Plugin for rbenv
brew install ruby-build

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install grc
brew install grc

# Install Spark
brew install spark

# Install Tree
brew install tree

# Install node
brew install node

# Install PHP 5.4
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php
brew install php54

# Install Mcrypt for PHP 5.4. Required for Laravel.
brew install php54-mcrypt

# Dependency management for PHP.
brew install josegonzalez/php/composer

printf '\033[0;34m%s\033[0m\n' "Cleaning Homebrew Cellar..."

# Remove outdated versions from the cellar
brew cleanup
