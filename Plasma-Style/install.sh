#!/bin/bash

# Define the theme directory and theme name
THEME_DIR="$HOME/.local/share/plasma/desktoptheme"
THEME_NAME="Obsidian-Glass"

# Copy the Obsidian-Glass folder to the KDE Aurorae theme directory
mkdir -p "$THEME_DIR"
cp -r "$THEME_NAME" "$THEME_DIR/"
