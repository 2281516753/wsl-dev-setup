# WSL Dev Environment Setup

[![Shell](https://img.shields.io/badge/Shell-✓-4EAA25?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![WSL2](https://img.shields.io/badge/WSL2-✓-0078D6?logo=windows)](https://learn.microsoft.com/en-us/windows/wsl/)
[![Docker](https://img.shields.io/badge/Docker-✓-2496ED?logo=docker)](https://www.docker.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()

一键部署 WSL2 开发环境的脚本集合，包含代理配置、常用工具安装、systemd 服务管理。

## 适用环境

- **WSL2** (Windows Subsystem for Linux 2)
- **Ubuntu 24.04+ / Debian 12+**
- 其他基于 systemd 的 Linux 发行版

## 快速开始

```bash
git clone https://github.com/2281516753/wsl-dev-setup.git
cd wsl-dev-setup
chmod +x *.sh
./install.sh
```

## 包含脚本

| 脚本 | 功能 |
|------|------|
| `install.sh` | 主安装脚本 — 一键安装所有工具 |
| `setup-proxy.sh` | 配置 mihomo 透明代理（Windows 宿主机 Clash → WSL） |
| `dev-tools.sh` | 安装开发工具集（git, python, node, docker 等） |
| `systemd-services.sh` | 配置 systemd 用户服务自启动 |
| `network-tools.sh` | 网络诊断工具安装（nmap, iperf3, tcpdump, mtr, wireshark-cli） |

## 安装内容

- **Shell**: zsh + oh-my-zsh
- **编辑器**: neovim, vscode (code)
- **版本管理**: git, gh (GitHub CLI)
- **语言**: Python 3, Node.js, Go
- **容器**: Docker, Docker Compose
- **代理**: mihomo (Clash Meta) 透明代理
- **网络**: nmap, iperf3, tcpdump, mtr

## 使用场景

### 场景一：新电脑到手，30 分钟搭好开发环境

换新电脑或重装系统后，最头疼的就是重新配置开发环境。clone 本仓库后执行 `./install.sh`，脚本自动安装所有常用工具、配置代理、设置 systemd 服务，全程无需手动干预。装完就能开始写代码。

### 场景二：多人团队统一开发环境

团队新成员入职时，每个人手动装工具不仅耗时还容易版本不一致。将本仓库分发给新成员，一键执行即可获得与团队一致的开发环境，避免"我这能跑你那不行"的问题。

### 场景三：WSL 网络故障快速恢复

WSL2 的网络配置偶尔会因 Windows 更新或休眠而失效（DNS 丢失、代理断开）。`setup-proxy.sh` 和 `network-tools.sh` 可以快速诊断和修复网络问题，不用每次出问题都去查 StackOverflow。

### 场景四：学习 Linux 运维的实战素材

脚本中包含了 systemd 服务管理、Shell 编程、网络配置、包管理等 Linux 运维核心知识点。阅读和修改这些脚本本身就是很好的学习过程。

## Author

Wang Jiong — Network Engineering student, cloud computing enthusiast.

## License

MIT
