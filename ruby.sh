#!/usr/bin/env bash

# Check for rbenv
# if test ! $(which rbenv)
# then
#   printf '\033[0;34m%s\033[0m\n' "rbenv is not install yet!"
#   exit 0
# else
#     if grep -q "2.4.2" "/Users/abiggs/.rbenv/version";
#     then
#        printf '\033[0;34m%s\033[0m\n' "rbenv version already installed."
#     else
#         # Install specific version of Ruby
#         rbenv install 2.4.2

#         # Set Ruby version as global version
#         rbenv global 2.4.2

#         # Refresh the Ruby environment
#         rbenv rehash
#     fi
# fi

# Installs scss-lint for Sublime Text linting.
# gem install scss-lint

sudo gem install bundler

# Refresh the Ruby environment
# rbenv rehash
