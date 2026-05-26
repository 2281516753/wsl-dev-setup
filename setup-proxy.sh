#!/bin/bash
# Mihomo Proxy Setup for WSL
# Assumes Windows host Clash running on port 7890
# Author: Wang Jiong

set -euo pipefail
GREEN='\033[0;32m'; CYAN='\033[0;36m'; RED='\033[0;31m'; NC='\033[0m'

MCLASH_VERSION="v1.19.25"
MCLASH_URL="https://github.com/MetaCubeX/mihomo/releases/download/${MCLASH_VERSION}/mihomo-linux-amd64-${MCLASH_VERSION}.gz"
INSTALL_DIR="$HOME/.local/bin"
CONFIG_DIR="$HOME/.config/mihomo"

echo -e "${CYAN}Setting up mihomo proxy...${NC}"

# Create directories
mkdir -p "$INSTALL_DIR" "$CONFIG_DIR"

# Download mihomo
echo -e "${CYAN}Downloading mihomo ${MCLASH_VERSION}...${NC}"
curl -sL --proxy http://127.0.0.1:7890 "$MCLASH_URL" -o /tmp/mihomo.gz
gunzip -f /tmp/mihomo.gz
mv /tmp/mihomo "$INSTALL_DIR/mihomo"
chmod +x "$INSTALL_DIR/mihomo"

# Create default config
cat > "$CONFIG_DIR/config.yaml" << 'EOF'
mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
external-controller: 127.0.0.1:9090

dns:
  enable: true
  enhanced-mode: fake-ip
  nameserver:
    - 223.5.5.5
    - 119.29.29.29

proxies: []
proxy-groups: []

rules:
  - DOMAIN-SUFFIX,cn,DIRECT
  - GEOIP,CN,DIRECT
  - MATCH,PROXY
EOF

# Add proxy to shell config
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
    if [ -f "$rc" ]; then
        grep -q "proxy ()" "$rc" 2>/dev/null || cat >> "$rc" << 'EOF'

# Proxy functions (mihomo)
proxy () {
    export HTTP_PROXY=http://127.0.0.1:7890
    export HTTPS_PROXY=http://127.0.0.1:7890
    export ALL_PROXY=socks5://127.0.0.1:7891
    echo "Proxy ON (127.0.0.1:7890)"
}
noproxy () {
    unset HTTP_PROXY HTTPS_PROXY ALL_PROXY
    echo "Proxy OFF"
}
EOF
    fi
done

echo -e "${GREEN}[✓] Mihomo proxy installed${NC}"
echo "Run 'proxy' to enable, 'noproxy' to disable."
