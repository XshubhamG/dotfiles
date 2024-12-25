# Dotfiles

A decent configuration setup for my personal [arch linux](https://archlinux.org/) desktop with [hypland](https://hyprland.org/) window manager.

## Stack

- **WM**: [hyprland](https://hyprland.org/)
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)/[warp](https://www.warp.dev/)
- **Editor**: [vscode](https://code.visualstudio.com/)/[neovim](https://neovim.io/)
- **Shell**: [zsh](https://wiki.archlinux.org/title/Zsh)
- **Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Launcher**: [wofi](https://github.com/SimplyCEO/wofi)
- **Multiplexer**: [tmux](https://github.com/tmux/tmux)

## Current setup

```zsh


lt --ignore-glob=.git
 .
├── 󱆃 .bashrc
├──  .config
│   ├──  bat
│   ├──  btop
│   ├──  fastfetch
│   ├──  git
│   ├──  glow
│   ├──  hypr
│   ├──  imv
│   ├──  kanata
│   ├──  kitty
│   ├──  Kvantum
│   ├──  lazygit
│   ├──  mpv
│   ├──  neofetch
│   ├──  neovide
│   ├──  nvim
│   ├──  pacseek
│   ├──  ranger
│   ├──  smassh
│   ├──  starship.toml
│   ├──  swaync
│   ├──  tmux
│   ├──  vesktop
│   ├──  vim
│   ├──  waybar
│   ├──  waypaper
│   ├──  wlogout
│   ├──  wofi
│   ├──  yazi
│   └──  zathura
├──  .gitignore
├──  .stow-local-ignore
├── 󱆃 .zshrc
├──  fonts
├──  fzf
├──  manual-zsh-plugins
├── 󰉏 Pictures
└──  README.md
```

## Quick Start

### Prerequisites

This configuration is only for Arch linux. Make sure you have these packages installed:

```zsh
# install required packages
sudo pacman -S git stow base-devel
```

### Installation

Clone and setup the configuration:

```zsh
# Clone the repository
git clone https://github.com/xshubhamg/dotfiles ~

# Navigate to the directory
cd ~/dotfiles

# Make the install script executable
chmod +x install.sh

# Run the installation script
./install.sh
```
