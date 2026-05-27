# === WSL2 开发环境快捷 alias ===

# 代理开关
alias pon='export HTTP_PROXY=http://127.0.0.1:7890 HTTPS_PROXY=http://127.0.0.1:7890 && echo "代理已开启"'
alias poff='unset HTTP_PROXY HTTPS_PROXY && echo "代理已关闭"'
alias pstatus='echo "HTTP_PROXY=$HTTP_PROXY"'

# 服务管理
alias gw='systemctl --user'
alias gws='systemctl --user status'
alias gwlog='journalctl --user -u hermes-gateway -f'

# Git 快捷
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline -10'

# 常用路径
alias desk='cd /mnt/c/Users/22815/Desktop'
alias proj='cd /home/wangjiong/projects'
alias home='cd /home/wangjiong'

# Hermes
alias hd='hermes doctor'
alias hs='hermes sessions list'
