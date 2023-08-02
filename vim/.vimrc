" 安装 VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" --- 插件 ---------------------------------------------------
call plug#begin('~/.vim/plugged')
" == colorscheme
Plug 'Luxed/ayu-vim'
" == 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" == 文件浏览器
Plug 'preservim/nerdtree' |
   \ Plug 'Xuyuanp/nerdtree-git-plugin'
" == 图标
Plug 'ryanoasis/vim-devicons'
call plug#end()

" --- 基础设置 ---------------------------------------------------
" == 行号
set nu
set relativenumber
" == 缩进
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
" == 鼠标
set mouse=a
" == 语法
syntax on
syntax enable
" == 搜索
set hlsearch
set incsearch
set ignorecase

" == 外观
set termguicolors
set background=dark
" == 突出显示当前行
set cursorline

" --- 快捷键 ---------------------------------------------------
" 主键
let mapleader=' '

" --- 插件设置 ---------------------------------------------------
" == colorscheme
let g:ayucolor='mirage'
colorscheme ayu
" == airline

" == NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>ef :NERDTreeFind<CR>
