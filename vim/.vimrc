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
Plug 'preservim/nerdtree'
" == 搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" == Vimwiki
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vimwiki/vimwiki'
" == 窗口移动
Plug 'christoomey/vim-tmux-navigator',
" == 图标
Plug 'ryanoasis/vim-devicons'
call plug#end()

" --- 基础设置 ---------------------------------------------------
" 兼容
set nocompatible
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
filetype plugin on
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
" 开启 tabline
let g:airline#extensions#tabline#enabled = 1

" == NERDTree
" 显示隐藏文件
let NERDTreeShowHidden=1
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>ef :NERDTreeFind<CR>

" == fzf
let g:fzf_preview_window = ['right,40%,<50(down,50%)', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }

com! -bar -bang Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter=: --nth=4..'}), <bang>0)
com! CHistory call CHistory()

func! CHistory()
  call filter(v:oldfiles, "v:val =~ '^' . $PWD . '.*$'")
  call fzf#vim#history(fzf#vim#with_preview(), 0)
endf

nnoremap <leader>fa :Ag<cr> " Ag 全局文本搜索
nnoremap <leader>fl :Files<cr> " 目录下文件搜索
nnoremap <leader>ft :BLines<cr> " 文件内文本搜索
nnoremap <leader>fh :CHistory<cr> " 目录下最近文件搜索

" == table mode
let g:table_mode_corner='|'
nnoremap \\f :TableModeToggle<cr> " 启动表格模式

" == Vimwiki
let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/Documents/PersonalNotes','syntax': 'markdown', 'ext': '.md'}]
