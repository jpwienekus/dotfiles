#!/bin/bash

# make executable
# chmod +x ~/.config/themes/cycle-themes.sh

THEMES_DIR="$HOME/.config/themes"
CURRENT_LINK="$THEMES_DIR/current"

# Get a list of themes sorted alphabetically
themes=($(ls -d $THEMES_DIR/*/ 2>/dev/null | xargs -n 1 basename))

# Check if there are any themes
if [ ${#themes[@]} -eq 0 ]; then
    echo "No themes found in $THEMES_DIR"
    exit 1
fi

# Find current theme
current_theme=$(basename $(readlink -f "$CURRENT_LINK" 2>/dev/null) 2>/dev/null)

# Find index of current theme, default to 0 if not found
current_index=0
for i in "${!themes[@]}"; do
    if [[ "${themes[$i]}" == "$current_theme" ]]; then
        current_index=$i
        break
    fi
done

# Get next theme
next_index=$(( (current_index + 1) % ${#themes[@]} ))
next_theme="${themes[$next_index]}"

# Update symlink
ln -sfn "$THEMES_DIR/$next_theme" "$CURRENT_LINK"

# Reload Hyprland config
hyprctl reload
