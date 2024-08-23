#!/bin/bash

# Define the theme directory and theme name
THEME_DIR="$HOME/.local/share/aurorae/themes"
THEME_NAME="Obsidian-Glass"

# Copy the Obsidian-Glass folder to the KDE Aurorae theme directory
mkdir -p "$THEME_DIR"
cp -r "$THEME_NAME" "$THEME_DIR/"

# Set the theme as the current window decoration with no borders
kwriteconfig5 --file ~/.config/kwinrc --group org.kde.kdecoration2 --key theme "__aurorae__svg__$THEME_NAME"
kwriteconfig5 --file ~/.config/kwinrc --group org.kde.kdecoration2 --key BorderSize "None"

# Set the title buttons to the left side with 'XIA' (Close, Maximize, Minimize)
kwriteconfig5 --file ~/.config/kwinrc --group org.kde.kdecoration2 --key ButtonsOnLeft "XIA"
kwriteconfig5 --file ~/.config/kwinrc --group org.kde.kdecoration2 --key ButtonsOnRight ""

# Restart KWin to apply the changes
qdbus org.kde.KWin /KWin reconfigure

