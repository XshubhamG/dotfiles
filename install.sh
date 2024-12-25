#!/usr/bin/env bash

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Logo
print_logo() {
  echo -e "${BLUE}"
  echo '   ██╗  ██╗██╗   ██╗██████╗ ██████╗  ██████╗ █████╗ ████████╗'
  echo '   ██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══██╔══╝'
  echo '   ███████║ ╚████╔╝ ██████╔╝██████╔╝██║     ███████║   ██║   '
  echo '   ██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══██╗██║     ██╔══██║   ██║   '
  echo '   ██║  ██║   ██║   ██║     ██║  ██║╚██████╗██║  ██║   ██║   '
  echo '   ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   '
  echo -e "${NC}"
  echo -e "${BLUE}Dotfiles Installation Script${NC}"
  echo
}

# Print info
print_info() {
  echo -e "${BLUE}[INFO]${NC} $1"
}

# Print success
print_success() {
  echo -e "${GREEN}[SUCCESS]${NC} $1"
}

# Print error
print_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}

# Print warning
print_warning() {
  echo -e "${YELLOW}[WARNING]${NC} $1"
}

# Check if GNU Stow is installed
check_stow() {
  if ! command -v stow &>/dev/null; then
    print_error "GNU Stow is not installed!"
    echo "Installing GNU Stow..."
    if command -v pacman &>/dev/null; then
      sudo pacman -S stow
    elif command -v apt &>/dev/null; then
      sudo apt install stow
    else
      print_error "Could not install stow. Please install it manually."
      exit 1
    fi
  fi
}

# Install a package
install_package() {
  local package=$1
  print_info "Installing $package..."
  if stow -v "$package" &>/dev/null; then
    print_success "$package installed"
    return 0
  else
    print_error "Failed to install $package"
    return 1
  fi
}

# Uninstall a package
uninstall_package() {
  local package=$1
  print_info "Uninstalling $package..."
  if stow -D -v "$package" &>/dev/null; then
    print_success "$package uninstalled"
    return 0
  else
    print_error "Failed to uninstall $package"
    return 1
  fi
}

# main menu
main_menu() {
  clear
  print_logo
  echo "What would you like to do?"
  echo
  echo "1) Install all packages"
  echo "2) Install specific packages"
  echo "3) Uninstall all packages"
  echo "4) Uninstall specific packages"
  echo "5) Reinstall all packages"
  echo "6) Create backup"
  echo "0) Exit"
  echo
  read -p "Enter your choice: " choice

  case $choice in
  1) install_all ;;
  2) install_specific ;;
  3) uninstall_all ;;
  4) uninstall_specific ;;
  5) reinstall_all ;;
  6) backup_existing ;;
  0) exit 0 ;;
  *) print_error "Invalid choice" && sleep 2 && main_menu ;;
  esac
}
