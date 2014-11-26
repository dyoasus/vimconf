set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'L9'

Plugin 'git://git.wincent.com/command-t.git'

"Plugin 'file:///home/gmarik/path/to/plugin'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"Plugin 'user/L9', {'name': 'newL9'}


"----------------------------------------------
"
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'lsdr/monokai'

Bundle 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8
"---------------------------------------------
	
call vundle#end()            " required
filetype plugin indent on    " required

"设置颜色主题
syntax enable
set background=dark
colorscheme monokai

"NERD TREE 配置
map <F8> :NERDTree<cr>
map <F9> :NERDTreeClose<cr>

"tab 键设定
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"显示行号
set number

"无限undo
set undofile

"set guifont=Sauce\ Code\ Powerline\ Regular
"set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium
set guifont=文泉驿等宽微米黑\ 11

"插入模式上下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>

"隐藏菜单栏与工具栏
set guioptions-=m
set guioptions-=T

"Nodejs补全
Bundle 'moll/vim-node'
