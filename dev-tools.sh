#!/bin/bash
# Development Tools Installer
# Author: Wang Jiong

set -euo pipefail
GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'

echo -e "${CYAN}Installing development tools...${NC}"

# Build essentials
sudo apt install -y -qq build-essential cmake pkg-config

# Git & GitHub CLI
sudo apt install -y -qq git gh

# Python
sudo apt install -y -qq python3 python3-pip python3-venv

# Node.js (via NodeSource)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y -qq nodejs

# Docker (WSL2 native)
if ! command -v docker &>/dev/null; then
    curl -fsSL https://get.docker.com | sudo sh
    sudo usermod -aG docker "$USER"
fi

# Neovim
sudo apt install -y -qq neovim

# Shell tools
sudo apt install -y -qq zsh jq ripgrep fd-find fzf bat eza zoxide tldr

echo -e "${GREEN}[✓] Development tools installed${NC}"
