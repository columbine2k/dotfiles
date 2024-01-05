#!/bin/bash

# === 安装 Homebrew ===
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# === 安装 Oh My Zsh ===
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh autosuggestions 插件
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ~/.oh-my-zsh/custom/plugins/fzf-tab
# powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git .oh-my-zsh/custom/themes/powerlevel10k


# === 字体 ===
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-blex-mono-nerd-font
# brew install --cask font-ibm-plex-mono
# brew install --cask font-dejavu-sans-mono-nerd-font
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
# stow 配置文件管理
brew install stow
# 进程监控 bottom
brew install bottom
# brew 安装包升级程序
brew tap buo/cask-upgrade
# 安卓 SDK 平台工具
brew install --cask android-platform-tools
# zk 文档编辑器
# brew install zk
# pngpaste
# brew install pngpaste
# deno
# brew install deno
# exiftool
# brew install exiftool
# 图片转 ascii 显示
# brew install TheZoraiz/ascii-image-converter/ascii-image-converter
# 终端复古图片查看器
# brew install chafa
# tmux
# brew install tmux 

# === 装机必备 ===
# iterm2
brew install --cask iterm2
# Google Chrome
brew install --cask google-chrome
# Squirrel 鼠须管
brew install --cask squirrel
# Karabiner
brew install --cask karabiner-elements
# OneSwitch
# brew install --cask one-switch
# NetNewsWire
brew install --cask netnewswire
# Textmate
brew install --cask textmate
# Telegram
brew install --cask telegram

# === 笔记应用 ===
# MarginNote 3
brew install --cask marginnote
# Mweb Pro
brew install --cask mweb-pro
# Scrivener
brew install --cask scrivener
# Obsidian
# brew install --cask obsidian
# Anytype
# brew install --cask anytype
# Notion
# brew install --cask notion

# === 下载应用 ===
# Motrix
brew install --cask motrix

# === 影音应用 ===
# 网易云命令行客户端 go-music
brew install anhoder/go-musicfox/go-musicfox
# IINA
brew install --cask iina
# Doppler
brew install --cask doppler
# XLD
brew install --cask xld

# === 图像应用 === 
# Eagle
brew install --cask ogdesign-eagle

# === 其他应用 === 
# balenaEtcher
# brew install --cask balenaetcher
