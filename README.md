# Clones my theme

Use my repo to appyly this theme and to use this dotfiles structure.
Easy setup and theme application for apps.

### Dependencies 
xorg-server, xorg-xinit (xorg packages for startx) 
base-devel(make)
bluez-uitls, bluetui (bluetooth tools), 
bash
vim
fastfetch 
ttf-jetbrains-mono-nerd (font) 
rofi
picom (compositor)
dunst, lib-notify (notification tools)
xclip, maim (screenshot tools)
networkmanager
wireplumber (volume control)
brightnessctl
feh (wallpaper)

## How to install
Clone this repo to your home directory. In the dotfiles dir run the install.sh script.

### Keybinds 
To check my dwm keybinds and modify them check under ~/dotfiles/src/dwm/config.h

### Themes
To apply another theme make another directory under ~/dotfiles/themes by your theme-name and make a colors.sh file for system colors.
To set wallpaper along with the theme save your wallpaper as default under your theme-name dir. 
Finally run apply-theme theme-name to apply your theme.


## Picom
- Directly using --config <file-path> while launch  

## Kitty
- Includes pywal config at the top 
- include ~/.cache/wal/colors-kitty.conf
