#!/usr/bin/env bash

# Install Yeoman, Grunt, and Bower
printf '\033[0;34m%s\033[0m\n' "Installing Yeoman..."
npm install -g yo
npm install -g generator-webapp
npm install -g generator-angular
npm install -g generator-backbone

# Installs jshint for Sublime Text linting.
npm install -g jshint

# Installs csslint for Sublime Text linting.
npm install -g csslint

# Installs Gulp.
npm install -g gulp
