#!/bin/bash

# Define source and destination paths
NVIM_SRC_DIR="$(pwd)/nvim"
ZSHRC_SRC_FILE="$(pwd)/.zshrc"
TMUX_CONF_SRC_FILE="$(pwd)/.tmux.conf"

NVIM_DEST_DIR="$HOME/.config/nvim"
ZSHRC_DEST_FILE="$HOME/.zshrc"
TMUX_CONF_DEST_FILE="$HOME/.tmux.conf"

# Copy Neovim configuration
if [ -d "$NVIM_SRC_DIR" ]; then
  mkdir -p "$NVIM_DEST_DIR"
  cp -r "$NVIM_SRC_DIR"/* "$NVIM_DEST_DIR"
  echo "Neovim configuration copied to $NVIM_DEST_DIR"
fi

# Copy .zshrc
if [ -f "$ZSHRC_SRC_FILE" ]; then
  cp "$ZSHRC_SRC_FILE" "$ZSHRC_DEST_FILE"
  echo ".zshrc copied to $ZSHRC_DEST_FILE"
fi

# Copy .tmux.conf
if [ -f "$TMUX_CONF_SRC_FILE" ]; then
  cp "$TMUX_CONF_SRC_FILE" "$TMUX_CONF_DEST_FILE"
  echo ".tmux.conf copied to $TMUX_CONF_DEST_FILE"
fi

echo "Dotfiles copied successfully"

