# WSL Dev Environment Setup 🖥️ 开发环境一键部署

[![Shell](https://img.shields.io/badge/Shell-✓-4EAA25?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![WSL2](https://img.shields.io/badge/WSL2-✓-0078D6?logo=windows)](https://learn.microsoft.com/en-us/windows/wsl/)
[![Docker](https://img.shields.io/badge/Docker-✓-2496ED?logo=docker)](https://www.docker.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> [📖 English Version / 英文版](README.md)

一键部署 WSL2 开发环境的脚本集合 —— 代理配置、常用工具安装、systemd 服务管理。

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
| `setup-proxy.sh` | 配置 mihomo 透明代理 |
| `dev-tools.sh` | 开发工具集（git, python, node, docker） |
| `systemd-services.sh` | systemd 用户服务自启动 |
| `network-tools.sh` | 网络诊断工具（nmap, iperf3, tcpdump, mtr） |

## 安装内容

| 类别 | 内容 |
|------|------|
| Shell | zsh + oh-my-zsh |
| 编辑器 | neovim, vscode |
| 版本管理 | git, gh (GitHub CLI) |
| 语言 | Python 3, Node.js, Go |
| 容器 | Docker, Docker Compose |
| 代理 | mihomo (Clash Meta) 透明代理 |
| 网络 | nmap, iperf3, tcpdump, mtr |

## 使用场景

- **新电脑上手**：30 分钟从零到全配开发环境
- **团队入职**：一键统一全团队开发环境
- **WSL 急救**：Windows 更新后代理/DNS 挂了？快速修复
- **学习素材**：Shell 编程 + systemd + Linux 运维实战

## 作者

王炯 (Wang Jiong) — 网络工程专业。

## License

MIT