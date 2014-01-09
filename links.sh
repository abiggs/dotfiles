#!/usr/bin/env bash
printf '\033[0;34m%s\033[0m\n' "Creating links..."

apps=(TextExpander)

source_dir=~/Library/Application\ Support
target_dir=~/Dropbox/Synced\ Settings/

cd "$source_dir"

for i in "${apps[@]}";
do
    ln -sfh "$target_dir/$i" "$i"
    printf '\033[0;34m%s\033[0m\n' "Link created for $i."
done
