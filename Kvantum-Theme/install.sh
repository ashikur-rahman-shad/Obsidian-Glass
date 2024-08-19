#!/bin/bash

# Set variables
THEME_DIR="$HOME/.config/Kvantum"
THEME_NAME="Obsidian-Glass"
CONFIG_FILE="$THEME_DIR/kvantum.kvconfig"

mkdir -p "$THEME_DIR/$THEME_NAME"

# Copy and overwrite theme files (with error handling)
cp -r -f "$THEME_NAME/"* "$THEME_DIR/$THEME_NAME/"
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy $THEME_NAME to $THEME_DIR."
    exit 1
else
    echo "Successfully copied $THEME_NAME to $THEME_DIR."
fi

# Edit the kvantum.kvconfig and set theme=Obsidian-Glass
if [ -f "$CONFIG_FILE" ]; then
    sed -i 's/^theme=.*/theme=Obsidian-Glass/' "$CONFIG_FILE"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to update theme in $CONFIG_FILE."
        exit 1
    else
        echo "Successfully set theme to $THEME_NAME in $CONFIG_FILE."
    fi
else
    echo "Error: $CONFIG_FILE not found."
    exit 1
fi

echo "Kvantum: Obsidian-Glass installed successfully."
