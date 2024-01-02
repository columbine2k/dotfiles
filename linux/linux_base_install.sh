#!/bin/bash

# === 安装 Oh My Zsh ===
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh autosuggestions 插件
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ~/.oh-my-zsh/custom/plugins/fzf-tab

# === 字体 ===
pacman -S ttf-ibmplex-mono-nerd ttf-jetbrains-mono-nerd adobe-source-han-sans-cn-fonts adobe-source-code-pro-fonts

# === 终端应用 ===
# rg
pacman -S ripgrep
# fd
pacman -S fd
# ag 
pacman -S the_silver_searcher
# fzf
pacman -S fzf
# neofetch
pacman -S neofetch
# bat
pacman -S bat
# joshuto
paru -S joshuto
# tree
pacman -S tree
# lazygit
pacman -S lazygit
# stow
pacman -S stow
# bottom
pacman -S bottom
# go-musicfox
paru -S go-musicfox-bin

# === 桌面环境 ===
pacman -S hyprland kitty waybar
