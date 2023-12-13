#!/bin/bash

# === 安装 Homebrew === 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# === 字体 ===
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-ibm-plex-mono
brew install --cask font-dejavu-sans-mono-nerd-font
brew install font-lxgw-wenkai

# === 终端应用 ===
# rg
brew install ripgrep
# fd 
brew install fd
# ag
brew install the_silver_searcher
# fzf
brew install fzf
# neofetch
brew install neofetch
# neovim
brew install neovim
# bat 终端文件预览
brew install bat
# joshuto 文件管理器
brew install joshuto
# 文档树
brew install tree
# lazygit
brew install jesseduffield/lazygit/lazygit
# zk 文档编辑器
# brew install zk
# brew 安装包升级程序
# brew tap buo/cask-upgrade
# deno
brew install deno
# pngpaste
# brew install pngpaste
# stow 配置文件管理
brew install stow
# 安卓 SDK 平台工具
# brew install --cask android-platform-tools
# 进程监控 bottom
brew install bottom
# exiftool
# brew install exiftool
# 图片转 ascii 显示
# brew install TheZoraiz/ascii-image-converter/ascii-image-converter
# 终端复古图片查看器
# brew install chafa
# tmux
# brew install tmux 
# 网易云终端客户端
brew install anhoder/go-musicfox/go-musicfox
