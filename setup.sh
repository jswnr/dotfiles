#!/bin/sh

SOURCE_DIR="$(pwd)/.config"
TARGET_DIR="$HOME/.config"

if [ ! -d "$HOME/.config" ]; then
    echo "Creating ~/.config directory..."
    mkdir -p "$HOME/.config"
fi

echo "Copying configuration files..."
cp -r "$SOURCE_DIR/"* "$TARGET_DIR/"

echo "Installing plug.vim..."
mkdir -p "$TARGET_DIR/nvim/autoload"
curl -o "$TARGET_DIR/nvim/autoload/plug.vim" \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Setup complete!"
