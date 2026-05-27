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

## 使用场景

### 场景一：新电脑到手，一键部署完整开发环境

刚拿到新电脑，装好 WSL2 后，只需克隆本仓库运行 `./install.sh`，即可在 10 分钟内拥有完整的 Linux 开发环境——zsh 终端、Neovim 编辑器、Python/Node/Go 语言链、Docker 容器运行时，全部自动配置到位。

### 场景二：Windows 桌面开发 + WSL 后端服务

在 Windows 上用 VS Code / WebStorm 等 IDE 编写代码，利用 WSL2 运行后端服务、数据库和容器。`setup-proxy.sh` 自动打通 Windows 宿主机代理，让 WSL 内的 `apt`、`pip`、`npm`、`docker pull` 全部走代理加速，无缝访问 GitHub 等外部资源。

### 场景三：网络工程实验环境快速搭建

网络工程专业学生或从业者，需要频繁使用网络诊断工具。`network-tools.sh` 一键安装 nmap、iperf3、tcpdump、mtr、wireshark-cli 等工具，配合 WSL2 的网络特性快速搭建抓包、扫描、性能测试的实验环境。

### 场景四：CI/CD 本地验证与容器化开发

在推送代码前，利用 WSL2 本地运行 GitHub Actions 或 GitLab CI 的近似环境。Docker + systemd 用户服务确保容器守护进程开机自启，`gh` CLI 直接管理 GitHub 仓库，无需来回切换 Windows 和 Linux 工具链。

## 作者

Wang Jiong — Network Engineering, cloud computing aspirant.

## License

MIT
