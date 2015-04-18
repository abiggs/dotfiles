#!/usr/bin/env bash

read -p "Is this \"Earth\" or \"Jupiter\"? or \"Mars\"? " COMPUTER_NAME
case $COMPUTER_NAME in
    Earth ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Earth...";;
    Jupiter ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Jupiter...";;
    Mars ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Mars...";;
    * ) echo "Please answer with \"Jupiter\" or \"Mars\"."; exit 0;;
esac

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

changeshell() {
    printf '\033[0;34m%s\033[0m\n' "Changing shell..."
    if [ `grep /usr/local/bin/zsh /etc/shells` ];
    then
        echo /usr/local/bin/zsh | chsh -s /usr/local/bin/zsh;
    else
        echo /usr/local/bin/zsh | sudo tee -a /etc/shells;
        chsh -s /usr/local/bin/zsh;
    fi
}

laravel() {
    printf '\033[0;34m%s\033[0m\n' "Installing Larvel..."
    composer global require "laravel/installer=~1.1"
    composer global require "laravel/homestead=~2.0"

}

# Install Homebrew.
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/ruby.sh
source ~/.dotfiles/node.sh
source ~/.dotfiles/ssh.sh

gitfiles
ohmyzsh
laravel
changeshell

source ~/.dotfiles/osx.sh

printf '\033[0;34m%s\033[0m\n' "Dotfiles installed."
