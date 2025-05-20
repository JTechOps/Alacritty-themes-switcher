#!/bin/bash

# Directory containing your Alacritty themes
THEMES_DIR="$HOME/.config/alacritty/themes"

# Path to the main Alacritty configuration file
ALACRITTY_CONFIG="$HOME/.config/alacritty/alacritty.toml"

# List all .toml theme files in the themes directory
themes=($(ls "$THEMES_DIR"/*.toml 2>/dev/null))

# Check if themes were found
if [ ${#themes[@]} -eq 0 ]; then
  echo "--------------------------------------------------"
  echo "No theme files found in $THEMES_DIR"
  echo "--------------------------------------------------"
  exit 1
fi

# Display available themes to the user
echo "--------------------------------------------------"
echo "Select a theme to apply to Alacritty:"
echo "--------------------------------------------------"

# Generate a list of theme names (without full path)
select theme in "${themes[@]##*/}"; do
  if [[ -n "$theme" ]]; then
    # Apply the selected theme by copying it to the main config file
    cp "$THEMES_DIR/$theme" "$ALACRITTY_CONFIG"
    echo "--------------------------------------------------"
    echo "Theme applied: $theme"
    echo "Alacritty will automatically reload the configuration"
    echo "--------------------------------------------------"
    break
  else
    echo "Invalid option. Please try again."
  fi
done