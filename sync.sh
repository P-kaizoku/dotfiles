#!/bin/bash

DOTFILES="$HOME/dotfiles"

echo "Syncing dotfiles..."

cp -r ~/.config/hypr $DOTFILES/
cp -r ~/.config/waybar $DOTFILES/
cp -r ~/.config/kitty $DOTFILES/
cp -r ~/.config/wlogout $DOTFILES/
cp -r ~/.config/waypaper $DOTFILES/
cp ~/.zshrc $DOTFILES/

cd $DOTFILES

if [[ -n $(git status --porcelain) ]]; then
    git add .
    git commit -m "auto sync $(date +%d-%m-%Y %H:%M)"
    git push
    echo "Pushed!"
else
    echo "Nothing changed."
fi
