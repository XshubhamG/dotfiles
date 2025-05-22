<!--toc:start-->

- [🌟 Hyprland-Arch Config in Catppuccin\_mocha](#-hyprland-arch-config-in-catppuccin_mocha)
  - [📚 Table of Contents](#-table-of-contents)
  - [📦 Programs](#-programs)
  - [👀 Preview](#-preview)
  - [Quick Start](#quick-start)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)

# 🌟 Hyprland-Arch Config in Catppuccin_mocha

![Main Image](./assets/preview-fastfetch.png)

A decent configuration setup for my personal [Arch Linux](https://archlinux.org/) desktop with [Hyprland](https://hyprland.org/) window manager in my favourite theme [Catppuccin](https://github.com/catppuccin/catppuccin)

<p align="center">
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png"/>
</p>

## 📚 Table of Contents

- [🌟 Hyprland-Arch Config in Catppuccin\_mocha](#-hyprland-arch-config-in-catppuccin_mocha)
  - [📚 Table of Contents](#-table-of-contents)
  - [📦 Programs](#-programs)
  - [👀 Preview](#-preview)
  - [Quick Start](#quick-start)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)

## 📦 Programs

List of programs and tools I use:

| Component | Program                                                                                                   |
| :-------- | :-------------------------------------------------------------------------------------------------------- |
| 🪟         | [Hyprland](https://github.com/hyprwm/Hyprland)                                                            |
| 💻         | [Kitty](https://github.com/kovidgoyal/kitty) / [Warp](https://app.warp.dev)                               |
| 🐚         | [Zsh](https://wiki.archlinux.org/title/Zsh) / [Starship](https://starship.rs)                             |
| 🎭         | [Tmux](https://github.com/tmux/tmux)                                                                      |
| 🔤         | [JetBrains Mono](https://jetbrains.com/lp/mono/) / [Dank Mono](https://dank.sh/)                          |
| 🖥️         | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) / [Pokeget](https://github.com/talwat/pokeget-rs) |
| 📁         | [Yazi](https://yazi-rs.github.io/) / [Thunar](https://wiki.archlinux.org/title/Thunar)                    |
| 📝         | [Neovim](https://neovim.io) / [NvChad](https://github.com/nvChad) / [Cursor](https://cursor.sh)           |
| 🌐         | [Brave](https://brave.com) / [Zen](https://zen-browser.app)                                               |
| 💬         | [Discord](https://discord.com) / [BetterDiscord](https://betterdiscord.app)                               |
| 📊         | [Waybar](https://github.com/Alexays/Waybar)                                                               |
| 🔍         | [Rofi](https://github.com/davatorium/rofi)                                                                |
| 🎨         | [Catppuccin](https://github.com/catppuccin/catppuccin)                                                    |
| 🔔         | [Dunst](https://dunst-project.org)                                                                        |
| 🔒         | [Hyprlock](https://github.com/hyprwm/hyprlock)                                                            |
| 🖥️         | [SDDM](https://wiki.archlinux.org/title/sddm)                                                             |
| 🎵         | [Spotify](https://spotify.com) / [Spicetify](https://spicetify.app)                                       |
| 📈         | [Cava](https://github.com/karlstav/cava)                                                                  |
| 🎬         | [MPV](https://mpv.io)                                                                                     |
| 📸         | [Flameshot](https://flameshot.org)                                                                        |
| 📓         | [Obsidian](https://obsidian.md)                                                                           |
| 📄         | [Zathura](https://pwmt.org/projects/zathura/)                                                             |

> [!NOTICE]
> [Bat](https://github.com/sharkdp/bat) /
> [Exa](https://github.com/ogham/exa) /
> [Fd](https://github.com/sharkdp/fd) /
> [Ripgrep](https://github.com) |

## 👀 Preview

<details>
    <summary>Desktop</summary>
    <img src="./assets/preview-1.png" alt="Desktop Preview"/>
</details>

<details>
    <summary>Fastfetch</summary>
    <img src="./assets/preview-fastfetch.png" alt="Fastfetch Preview"/>
</details>

<details>
    <summary>Neovim</summary>
    <img src="./assets/preview-nvim.png" alt="Neovim Preview"/>
</details>

<details>
    <summary>Spotify</summary>
    <img src="./assets/preview-spotify.png" alt="Spotify Preview"/>
</details>

<details>
    <summary>Browser</summary>
    <img src="./assets/preview-brave.png" alt="Browser Preview"/>
</details>

<details>
    <summary>File Manager</summary>
    <img src="./assets/preview-yazi.png" alt="File Manager Preview"/>
</details>

<details>
    <summary>Discord</summary>
    <img src="./assets/preview-discord.png" alt="Discord Preview"/>
</details>

## Quick Start

### Prerequisites

This configuration is only for Arch Linux. Make sure you have these packages installed:

```bash
# Install required packages
sudo pacman -S git stow base-devel
```

### Installation

Clone and setup the configuration:

```bash
# Clone the repository
git clone https://github.com/xshubhamg/dotfiles ~

# Navigate to the directory
cd ~/dotfiles

# Make the install script executable
chmod +x install.sh

# Run the installation script
./install.sh
```

<p align="center">
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
    <a href="https://github.com/xshubhamg/xshubhamg/LICENSE">
        <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/>
    </a>
</p>
