

read -p "Is this \"Aaron's Mac Studio\" or \"Aaron's iMac Pro\" or \"Aaron's MacBook Air\" or \"Aaron's MacBook Pro\"? " COMPUTER_NAME
case $COMPUTER_NAME in
    Aaron\'s\ Mac\ Studio ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Aaron's iMac...";;
    Aaron\'s\ iMac\ Pro ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Aaron's iMac Pro...";;
    Aaron\'s\ MacBook\ Air ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Aaron's MacBook Air...";;
    Aaron\'s\ MacBook\ Pro ) printf '\033[0;34m%s\033[0m\n' "Installing dotfiles on Aaron's MacBook Pro...";;
    * ) echo "Please answer with \"Aaron's Mac Studio\" or \"Aaron's iMac Pro\" or \"Aaron's MacBook Air\" or \"Aaron's MacBook Pro\"."; exit 0;;
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

ssh() {
  sudo sh -c 'echo "ServerAliveInterval 120" >> /etc/ssh/ssh_config'
}

hosts() {
    if grep -q "# Docker Machine Sites" "/etc/hosts";
    then
        printf '\033[0;34m%s\033[0m\n' "Hosts already configured."
    else
        printf '\033[0;34m%s\033[0m\n' "Configuring Hosts..."
        sudo bash -c "echo '# Docker Machine Sites' >> /etc/hosts"
        sudo bash -c "echo 127.0.0.1 Jupiter casapps.test classnav.test esurvey.test eval.test iadvise.test icoach.test ses.test tps.test >> /etc/hosts"
    fi
}

ohmyzsh() {
    printf '\033[0;34m%s\033[0m\n' "Installing oh-my-zsh..."
    curl -L https://raw.github.com/abiggs/oh-my-zsh/master/tools/install.sh | sh
}

changeshell() {
    printf '\033[0;34m%s\033[0m\n' "Changing shell..."
    if [ `grep /bin/zsh /etc/shells` ];
    then
        echo /bin/zsh | chsh -s /bin/zsh;
    else
        echo /bin/zsh | sudo tee -a /etc/shells;
        chsh -s /bin/zsh;
    fi
    touch ~/.hushlogin
}

composer() {
    printf '\033[0;34m%s\033[0m\n' "Installing Composer..."
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
}

# Install Scripts
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/ruby.sh
source ~/.dotfiles/node.sh
gitfiles
ssh
hosts
composer
ohmyzsh
changeshell

printf '\033[0;34m%s\033[0m\n' "Dotfiles installed."
