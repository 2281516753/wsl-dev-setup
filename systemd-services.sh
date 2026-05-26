#!/bin/bash
# Systemd User Services Setup
# Author: Wang Jiong

set -euo pipefail
GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'

SERVICE_DIR="$HOME/.config/systemd/user"
mkdir -p "$SERVICE_DIR"

echo -e "${CYAN}Setting up systemd user services...${NC}"

# Mihomo service
cat > "$SERVICE_DIR/mihomo.service" << 'EOF'
[Unit]
Description=Mihomo Proxy Service
After=network.target

[Service]
Type=simple
ExecStart=%h/.local/bin/mihomo -d %h/.config/mihomo
Restart=on-failure
RestartSec=5

[Install]
WantedBy=default.target
EOF

systemctl --user daemon-reload
systemctl --user enable mihomo.service 2>/dev/null || true

echo -e "${GREEN}[✓] Systemd services configured${NC}"
echo "Services: mihomo.service"
