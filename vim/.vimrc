" 安装 VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" --- 插件 ---------------------------------------------------
call plug#begin('~/.vim/plugged')
" == colorscheme
Plug 'ayu-theme/ayu-vim'
" == 状态栏
Plug 'vim-airline/vim-airline'
call plug#end()

" --- 基础设置 ---------------------------------------------------
" == 外观
set termguicolors


" --- 插件设置 ---------------------------------------------------
"  == colorscheme
let ayucolor="mirage"
