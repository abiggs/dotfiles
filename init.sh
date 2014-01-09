#!/usr/bin/env bash

gitfiles() {
    echo "\033[0;34mLooking for an existing gitconfig config...\033[0m"
    if [ -f ~/.gitconfig ] || [ -h ~/.gitconfig ]
    then
      echo "\033[0;33mFound ~/.gitconfig.\033[0m \033[0;32mBacking up to ~/.gitconfig.old\033[0m";
      mv ~/.gitconfig ~/.gitconfig.old;
    fi

    echo "\033[0;34mUsing the gitconfig template file and adding it to ~/.gitconfig\033[0m"
    cp ~/.dotfiles/templates/gitconfig.template ~/.gitconfig
}

ohmyzsh() {
    printf '\033[0;34m%s\033[0m\n' "Installing oh-my-zsh..."
    curl -L https://raw.github.com/abiggs/oh-my-zsh/master/tools/install.sh | sh
}

# Install Homebrew.
# source ./homebrew.sh
# source ./ruby.sh
# source ./node.sh
# source ./capistrano.sh
# source ./ssh.sh
# source ./links.sh
# source ./osx.sh

gitfiles
# ohmyzsh
