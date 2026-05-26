# WSL Dev Environment Setup

[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

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
- **容器**: Docker (WSL2 backend)
- **网络**: nmap, iperf3, tcpdump, mtr, dig, curl, wget
- **代理**: mihomo (Clash Meta), 自动配置环境变量

## 代理配置说明

`setup-proxy.sh` 假定 Windows 宿主机上已有 Clash 客户端运行在 `7890` 端口。脚本会自动：
1. 下载并安装 mihomo
2. 配置 `HTTP_PROXY` / `HTTPS_PROXY` 环境变量
3. 设置 `.bashrc` / `.zshrc` 自动加载代理
4. 配置 systemd 自启服务

## 作者

Wang Jiong — Network Engineering, cloud computing aspirant.

## License

MIT
