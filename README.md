# WSL Dev Environment Setup 🖥️

[![Shell](https://img.shields.io/badge/Shell-✓-4EAA25?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![WSL2](https://img.shields.io/badge/WSL2-✓-0078D6?logo=windows)](https://learn.microsoft.com/en-us/windows/wsl/)
[![Docker](https://img.shields.io/badge/Docker-✓-2496ED?logo=docker)](https://www.docker.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> [📖 中文版 / Chinese Version](README_CN.md)

One-click WSL2 development environment setup — proxy configuration, dev tools, systemd services.

## Supported Environments

- **WSL2** (Windows Subsystem for Linux 2)
- **Ubuntu 24.04+ / Debian 12+**
- Other systemd-based Linux distros

## Quick Start

```bash
git clone https://github.com/2281516753/wsl-dev-setup.git
cd wsl-dev-setup
chmod +x *.sh
./install.sh
```

## Included Scripts

| Script | Purpose |
|--------|---------|
| `install.sh` | Master installer — one-click everything |
| `setup-proxy.sh` | Mihomo transparent proxy setup |
| `dev-tools.sh` | Dev tools (git, python, node, docker) |
| `systemd-services.sh` | Systemd user service auto-start |
| `network-tools.sh` | Network diagnostic tools (nmap, iperf3, tcpdump, mtr) |

## What Gets Installed

| Category | Items |
|----------|-------|
| Shell | zsh + oh-my-zsh |
| Editor | neovim, vscode |
| VCS | git, gh (GitHub CLI) |
| Languages | Python 3, Node.js, Go |
| Containers | Docker, Docker Compose |
| Proxy | mihomo (Clash Meta) |
| Network | nmap, iperf3, tcpdump, mtr |

## Use Cases

- **New machine**: 30 min from zero to fully configured dev environment
- **Team onboarding**: One command, consistent environment for everyone
- **WSL recovery**: Quick fix when DNS/proxy breaks after Windows updates
- **Learning**: Real-world Shell, systemd, and Linux admin examples

## Author

Wang Jiong (王炯) — Network Engineering student.

## License

MIT