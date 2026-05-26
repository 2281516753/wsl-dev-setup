#!/bin/bash
# Network Tools Installer
# Author: Wang Jiong

set -euo pipefail
GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'

echo -e "${CYAN}Installing network tools...${NC}"

sudo apt install -y -qq \
    nmap \
    iperf3 \
    tcpdump \
    mtr \
    dnsutils \
    net-tools \
    traceroute \
    whois \
    curl \
    wget \
    openssh-client \
    wireguard-tools \
    bridge-utils

echo -e "${GREEN}[✓] Network tools installed${NC}"
