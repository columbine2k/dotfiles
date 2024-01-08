# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#--- 安装路径 ---------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

#--- 主题 ---------------------------------------------------
# 主题库 https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

#--- 插件 ---------------------------------------------------
# 默认插件位置 $ZSH/plugins/
# 自定插件位置 $ZSH_CUSTOM/plugins/
plugins=(git fzf fzf-tab copypath zsh-autosuggestions zsh-syntax-highlighting)

#--- 用户配置 ---------------------------------------------------
#==== oh-my-zsh
source $ZSH/oh-my-zsh.sh
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#==== bat
export BAT_THEME="gruvbox-dark"

#==== fzf
source ~/.zsh_fzf_extra

#--- 杂项 ---------------------------------------------------
# 如果粘贴URL和其他文本时出现混乱,请取消下面一行的注释
# DISABLE_MAGIC_FUNCTIONS="true"

# 取消下面一行注释以启用命令自动更正
# ENABLE_CORRECTION="true"

# 语言
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#--- 别名 ---------------------------------------------------
alias mf="musicfox"
alias nv="nvim"
alias p2a="ascii-image-converter"
alias jo="joshuto"
alias lg="lazygit"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
