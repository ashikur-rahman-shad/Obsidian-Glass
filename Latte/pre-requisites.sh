#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="./plasmoid"
DEST_DIR="$HOME/.local/share/plasma/plasmoids"

# Ensure the destination directory exists
mkdir -p "$DEST_DIR"

# Loop through all directories inside the source directory
for folder in "$SOURCE_DIR"/*; do
  if [ -d "$folder" ]; then
    # Get the folder name
    folder_name=$(basename "$folder")

    # Check if the folder already exists in the destination
    if [ ! -d "$DEST_DIR/$folder_name" ]; then
      # Copy the folder to the destination
      cp -r "$folder" "$DEST_DIR"
      echo "Copied $folder_name to $DEST_DIR"
    else
      echo "Folder $folder_name already exists in $DEST_DIR. Skipping."
    fi
  fi
done
