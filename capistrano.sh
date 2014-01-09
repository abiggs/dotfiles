#!/usr/bin/env bash

sudo gem install --version 2.15.4 capistrano
printf '\033[0;34m%s\033[0m\n' "Installing Capistrano..."

# Install Gems.
if [[ "$(type -P gem)" ]]; then
  printf '\033[0;34m%s\033[0m\n' "Updating gems..."
  sudo gem update --system
  
  gems=(capistrano railsless-deploy capistrano-ext compass)

  for i in "${gems[@]}"
  do
    printf '\033[0;34m%s\033[0m\n' `gem list $i -i`
    if (! `gem list $i -i`)
    then
        sudo gem install $i
        printf '\033[0;34m%s\033[0m\n' "Installing $i ..."
    else
        printf '\033[0;34m%s\033[0m\n' "$i already installed."
    fi
  done
fi
