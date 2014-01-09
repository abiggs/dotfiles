#!/usr/bin/env bash

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

ohmyzsh
