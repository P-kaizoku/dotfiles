#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles..."

mkdir -p ~/.config

configs=(hypr waybar kitty rofi dunst wlogout waypaper)

for dir in "${configs[@]}"; do
    rm -rf ~/.config/$dir
    ln -sf "$DOTFILES/$dir" ~/.config/$dir
    echo "Linked $dir"
done

ln -sf "$DOTFILES/.zshrc" ~/.zshrc
echo "Linked .zshrc"

echo "Done!"
