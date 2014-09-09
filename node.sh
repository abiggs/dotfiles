#!/usr/bin/env bash

# Installs Yeoman and a few generators.
printf '\033[0;34m%s\033[0m\n' "Installing Yeoman..."
npm install -g yo
npm install -g generator-webapp
npm install -g generator-angular
npm install -g generator-backbone

# Installs Gulp.
npm install -g gulp
