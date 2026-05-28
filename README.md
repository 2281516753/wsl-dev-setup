# WSL Dev Environment Setup 🖥️

[![Shell](https://img.shields.io/badge/Shell-✓-4EAA25?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![WSL2](https://img.shields.io/badge/WSL2-✓-0078D6?logo=windows)](https://learn.microsoft.com/en-us/windows/wsl/)
[![Docker](https://img.shields.io/badge/Docker-✓-2496ED?logo=docker)](https://www.docker.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()

> 一键部署 WSL2 开发环境的脚本集合，包含代理配置、常用工具安装、systemd 服务管理。
> One-click WSL2 dev environment setup: proxy, tools, systemd services.

## 适用环境 / Supported Environments

- **WSL2** (Windows Subsystem for Linux 2)
- **Ubuntu 24.04+ / Debian 12+**
- 其他基于 systemd 的 Linux 发行版 / Other systemd-based distros

## 快速开始 / Quick Start

```bash
git clone https://github.com/2281516753/wsl-dev-setup.git
cd wsl-dev-setup
chmod +x *.sh
./install.sh
```

## 包含脚本 / Included Scripts

| 脚本 Script | 功能 Description |
|------------|-----------------|
| `install.sh` | 主安装脚本 — 一键安装所有工具 / Master installer |
| `setup-proxy.sh` | 配置 mihomo 透明代理 / Transparent proxy setup |
| `dev-tools.sh` | 安装开发工具集（git, python, node, docker 等）/ Dev tools |
| `systemd-services.sh` | 配置 systemd 用户服务自启动 / Auto-start services |
| `network-tools.sh` | 网络诊断工具安装（nmap, iperf3, tcpdump, mtr, wireshark-cli）/ Network tools |

## 安装内容 / What Gets Installed

| 类别 Category | 内容 Items |
|--------------|-----------|
| **Shell** | zsh + oh-my-zsh |
| **编辑器 Editor** | neovim, vscode (code) |
| **版本管理 VCS** | git, gh (GitHub CLI) |
| **语言 Languages** | Python 3, Node.js, Go |
| **容器 Containers** | Docker, Docker Compose |
| **代理 Proxy** | mihomo (Clash Meta) 透明代理 |
| **网络 Network** | nmap, iperf3, tcpdump, mtr |

## 使用场景 / Use Cases

### 场景一：新电脑到手，30 分钟搭好开发环境

换新电脑或重装系统后，最头疼的就是重新配置开发环境。clone 后执行 `./install.sh`，脚本自动安装所有常用工具、配置代理、设置 systemd 服务，全程无需手动干预。

### 场景二：多人团队统一开发环境

团队新成员入职时，每个人手动装工具不仅耗时还容易版本不一致。将本仓库分发给新成员，一键执行即可获得与团队一致的开发环境。

### 场景三：WSL 网络故障快速恢复

WSL2 网络偶尔因 Windows 更新或休眠而失效（DNS 丢失、代理断开）。`setup-proxy.sh` 和 `network-tools.sh` 可快速诊断和修复，不用每次去查 StackOverflow。

### 场景四：学习 Linux 运维的实战素材

脚本包含 systemd 服务管理、Shell 编程、网络配置、包管理等 Linux 运维核心知识点。阅读和修改这些脚本本身就是很好的学习过程。

---

### Quick Use Cases (EN)

- **New machine setup**: 30 minutes from zero to fully configured dev environment
- **Team onboarding**: One command, consistent environment for all team members
- **WSL network recovery**: Quick fix when DNS/proxy breaks after Windows updates
- **Learning resource**: Real-world Shell scripting, systemd, and Linux admin examples

## Author

Wang Jiong (王炯) — Network Engineering student, cloud computing enthusiast.

## License

MIT
