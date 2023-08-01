#--- 安装路径 ---------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

#--- 主题 ---------------------------------------------------
# 主题库 https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

#--- 插件 ---------------------------------------------------
# 默认插件位置 $ZSH/plugins/
# 自定插件位置 $ZSH_CUSTOM/plugins/
plugins=(git fzf fzf-tab)

#--- 用户配置 ---------------------------------------------------
#==== oh-my-zsh
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#==== bat
export BAT_THEME="base16-256"

#==== fzf
#== 主题
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#cbccc6,bg:#1f2430,hl:#707a8c
 --color=fg+:#707a8c,bg+:#191e2a,hl+:#ffcc66
 --color=info:#73d0ff,prompt:#707a8c,pointer:#cbccc6
 --color=marker:#73d0ff,spinner:#73d0ff,header:#d4bfff'
#== 触发键位
export FZF_COMPLETION_TRIGGER='..'
#== 基础设置
export FZF_DEFAULT_OPTS="
 --height 40% 
 --layout=reverse
 --preview 'bat --style=numbers --color=always --line-range :800 {}'"
#== tree 目录预览
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}
#== 使用 fd 搜索
# [--exclude ] 为忽略目录
export FZF_DEFAULT_COMMAND="fd --exclude={.git,build,.local} --type f"
export FZF_CTRL_T_COMMAND="fd --type f"
export FZF_ALT_C_COMMAND="fd --type d"

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
