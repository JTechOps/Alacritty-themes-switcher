# Alacritty Theme Switcher

This script allows you to easily switch between different themes for your Alacritty terminal. It allows you to select a theme and automatically apply it by replacing the `alacritty.toml` configuration file with your selected theme. After applying the theme, Alacritty will restart to reflect the changes.

## Installation

### Steps to Use

1. **Copy the `themes/` folder to your Alacritty configuration directory:**

   Copy the `themes/` folder into your `$HOME/.config/alacritty/` directory:

```bash
   cp -r themes/ $HOME/.config/alacritty/
```

2. **Give execute permissions to the script:**

```bash
   chmod +x alacritty_theme_switcher.sh
```

3. **Run the script to select and apply a theme:**

```bash
   ./alacritty_theme_switcher.sh
```

   This will present a list of available themes. Select a theme, and the script will automatically apply it and restart Alacritty.


## Required Fonts

To ensure that the themes look as intended, you will need to install the following fonts:

- Terminus
- IBM 3270
- DejaVu Sans Mono
- Fira Code
- Noto Sans Mono CJK SC
- JetBrains Mono

You can install these fonts manually or through your package manager. For example, on Ubuntu, you can install most of these fonts using the following commands:

```bash
sudo apt install fonts-noto-cjk
sudo apt install fonts-jetbrains-mono
sudo apt install fonts-firacode
sudo apt install xfonts-terminus
sudo apt install fonts-3270
sudo apt install fonts-terminus
```

## Available Themes

The following themes are available for selection:

- crimson_abyss.toml
- cyber_chaos.toml
- cyberpunk_night.toml
- dark_synthwave.toml
- doom_terminal.toml
- hacker_underground.toml
- hellfire_terminal.toml
- infernal_cyberpunk.toml
- infernal_grid.toml
- necrobyte_hacker.toml
- necro_terminal.toml
- neon_inferno.toml
- neon_plague.toml
- neon_tokyo.toml
- shadowDOS.toml
- warp_zone.toml

You can preview each of these themes by selecting them from the list when running the script. The selected theme will then be applied to your Alacritty configuration.

## Theme Previews

Below are images showcasing a few of the themes. While all 16 themes are available, here are five for visual reference:

- crimson_abyss
- cyber_chaos
- dark_synthwave
- doom_terminal
- neon_plague

(Replace images/ with the actual path to your image folder.)

## Notes

- The script will overwrite your current `alacritty.toml` configuration with the selected theme.
- Alacritty will automatically restart after the theme is applied.
- To add or customize themes, you can modify the `.toml` files in the `themes/` folder.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Instructions:

1. **Step 1:** Copy the `themes/` folder to `$HOME/.config/alacritty/`.
2. **Step 2:** Give execute permissions to the script.
3. **Step 3:** Run the script and select a theme.
