#!/bin/bash
# WSL Dev Environment Setup - Main Installer
# Author: Wang Jiong
# License: MIT

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${CYAN}  WSL Dev Environment Setup${NC}"
echo -e "${CYAN}========================================${NC}"
echo ""

# Detect OS
if ! grep -qi microsoft /proc/version 2>/dev/null && ! grep -qi wsl /proc/version 2>/dev/null; then
    echo -e "${YELLOW}[!] Not running inside WSL. Some features may not work.${NC}"
fi

# Step 1: Update system
echo -e "${CYAN}[1/4] Updating system packages...${NC}"
sudo apt update -qq && sudo apt upgrade -y -qq
echo -e "${GREEN}[✓] System updated${NC}"

# Step 2: Install dev tools
echo -e "${CYAN}[2/4] Installing development tools...${NC}"
bash "$SCRIPT_DIR/dev-tools.sh"
echo -e "${GREEN}[✓] Dev tools installed${NC}"

# Step 3: Install network tools
echo -e "${CYAN}[3/4] Installing network tools...${NC}"
bash "$SCRIPT_DIR/network-tools.sh"
echo -e "${GREEN}[✓] Network tools installed${NC}"

# Step 4: Configure proxy (optional)
echo -e "${CYAN}[4/4] Configuring proxy...${NC}"
read -p "Configure mihomo proxy? (Windows-hosted Clash required) [y/N]: " setup_proxy
if [[ "$setup_proxy" =~ ^[Yy]$ ]]; then
    bash "$SCRIPT_DIR/setup-proxy.sh"
    echo -e "${GREEN}[✓] Proxy configured${NC}"
else
    echo -e "${YELLOW}[!] Skipped proxy setup${NC}"
fi

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Setup Complete!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo "Run 'source ~/.bashrc' or restart your shell to apply changes."
