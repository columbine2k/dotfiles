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
brew install fzf
