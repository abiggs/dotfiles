#!/usr/bin/env bash

# Check for rbenv
if test ! $(which rbenv)
then
  printf '\033[0;34m%s\033[0m\n' "rbenv is not install yet!"
  exit 0
else
    if grep -q "1.9.3-p448" "/Users/abiggs/.rbenv/version";
    then
       printf '\033[0;34m%s\033[0m\n' "rbenv version already installed."
    else
        # Install specific version of Ruby
        rbenv install 1.9.3-p448

        # Set Ruby version as global version
        rbenv global 1.9.3-p448

        # Refresh the Ruby environment
        rbenv rehash
    fi
fi

# Installs scss-lint for Sublime Text linting.
# gem install scss-lint

gem install bundler
