#!/usr/bin/env bash

gitfiles() {

    gitfiles=(gitconfig gitignore)
    
    for i in "${gitfiles[@]}"
    do
      echo "\033[0;34mLooking for an existing $i config...\033[0m"
      if [ -f ~/.$i ] || [ -h ~/.$i ]
      then
        echo "\033[0;33mFound ~/.$i.\033[0m \033[0;32mBacking up to ~/.$i.old\033[0m";
        mv ~/.$i ~/.$i.old;
      fi

      echo "\033[0;34mUsing the $i template file and adding it to ~/.$i\033[0m"
      cp ~/.dotfiles/templates/$i.template ~/.$i
    done

   
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
