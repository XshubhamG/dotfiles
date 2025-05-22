#!/usr/bin/env bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ASCII Art
print_banner() {
    echo -e "${BLUE}"
    cat << "EOF"
    _       _    __ _ _
   | |     | |  / _(_) |
 __| | ___ | |_| |_ _| | ___  ___
/ _` |/ _ \| __|  _| | |/ _ \/ __|
| (_| | (_) | |_| | | | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/

EOF
    echo -e "${NC}"
}

# Function to check if running on Arch Linux
check_arch() {
    if ! command -v pacman &> /dev/null; then
        echo -e "${RED}This script is only for Arch Linux and its derivatives.${NC}"
        exit 1
    fi
}

# Function to install AUR helper
install_aur_helper() {
    echo -e "${CYAN}Select your preferred AUR helper:${NC}"
    echo -e "1) ${YELLOW}yay${NC}"
    echo -e "2) ${YELLOW}paru${NC}"

    read -p "Enter your choice (1-2): " aur_choice

    case $aur_choice in
        1)
            echo -e "${GREEN}Installing yay...${NC}"
            sudo pacman -S --needed git base-devel
            git clone https://aur.archlinux.org/yay.git
            cd yay
            makepkg -si --noconfirm
            cd ..
            rm -rf yay
            AUR_HELPER="yay"
            ;;
        2)
            echo -e "${GREEN}Installing paru...${NC}"
            sudo pacman -S --needed git base-devel
            git clone https://aur.archlinux.org/paru.git
            cd paru
            makepkg -si --noconfirm
            cd ..
            rm -rf paru
            AUR_HELPER="paru"
            ;;
        *)
            echo -e "${RED}Invalid choice. Exiting...${NC}"
            exit 1
            ;;
    esac
}

# Function to install required packages
install_packages() {
    echo -e "${CYAN}Installing required packages...${NC}"

    # Core packages
    sudo pacman -S --needed git stow base-devel

    # Essential packages
    echo -e "${YELLOW}Installing essential packages...${NC}"
    sudo pacman -S --needed \
        zsh \
        kitty \
        tmux \
        neovim \
        waybar \
        rofi-wayland \
        dunst \
        sddm \
        mpv \
        flameshot \
        zathura \
        bat \
        exa \
        fd \
        ripgrep \
        discord

    # AUR packages
    echo -e "${YELLOW}Installing AUR packages...${NC}"
    $AUR_HELPER -S --needed \
        hyprland \
        hyprlock \
        betterdiscord \
        spicetify-cli

    # Install fonts
    echo -e "${YELLOW}Installing fonts...${NC}"
    mkdir -p ~/.local/share/fonts
    cp -r fonts/* ~/.local/share/fonts/
    fc-cache -f -v
}

# Function to setup dotfiles
setup_dotfiles() {
    echo -e "${CYAN}Setting up dotfiles...${NC}"

    # Create necessary directories
    mkdir -p ~/.config

    # Stow dotfiles
    stow -v -t ~ */
}

# Main menu
main_menu() {
    while true; do
        echo -e "\n${MAGENTA}=== Main Menu ===${NC}"
        echo -e "1) ${YELLOW}Install AUR Helper${NC}"
        echo -e "2) ${YELLOW}Install Required Packages${NC}"
        echo -e "3) ${YELLOW}Setup Dotfiles${NC}"
        echo -e "4) ${YELLOW}Run Full Installation${NC}"
        echo -e "5) ${RED}Exit${NC}"

        read -p "Enter your choice (1-5): " choice

        case $choice in
            1)
                install_aur_helper
                ;;
            2)
                if [ -z "$AUR_HELPER" ]; then
                    echo -e "${RED}Please install an AUR helper first!${NC}"
                    continue
                fi
                install_packages
                ;;
            3)
                setup_dotfiles
                ;;
            4)
                install_aur_helper
                install_packages
                setup_dotfiles
                ;;
            5)
                echo -e "${GREEN}Thank you for using the installer!${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid choice. Please try again.${NC}"
                ;;
        esac
    done
}

# Main execution
print_banner
check_arch
main_menu
