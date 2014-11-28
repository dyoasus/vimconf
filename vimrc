set nocompatible              " be iMproved, required
"filetype off                  " required

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

" == 插件 ==
" ==========
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'lsdr/monokai'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
"Node支持
Bundle 'moll/vim-node'	        
"自动补全括号
Bundle 'Raimondi/delimitMate'	
"批量注释工具 单行：gcc gcu 多行:visual gc
Bundle 'tpope/vim-commentary' 		
"查看git详细提交日志
Bundle 'gregsexton/gitv' 		
"js code beautify 使用 ~/.editorconfig 作为配置
Bundle 'maksimr/vim-jsbeautify'	
Bundle 'editorconfig/editorconfig-vim'
" js代码检查
Bundle 'https://github.com/Shutnik/jshint2.vim.git'		

" == 全局配置 ==
" ==============
set laststatus=2
set t_Co=256
set encoding=utf8

" tab 键设定
set tabstop=2  		
set shiftwidth=2
set softtabstop=2
set expandtab

"显示行号
set number		
"无限undo
set undofile	
set guifont=文泉驿等宽微米黑\ 11

"插入模式上下移动
inoremap <a-j> <down>
inoremap <a-k> <up>
inoremap <a-l> <right>
inoremap <a-h> <left>
inoremap <A-;> <End>
"撤销
inoremap <a-u> u
"插入行
inoremap <a-o> <Esc>o
inoremap <a-O> <Esc>O
"删除行
inoremap <a-d> dd


"隐藏菜单栏与工具栏
set guioptions-=m		
set guioptions-=T

" == 插件配置 ==
" ==============
let g:Powerline_symbols='unicode'
call vundle#end()            " required
filetype plugin indent on    " required
" 设置颜色主题
syntax enable
set background=dark
colorscheme monokai 	

" == 快捷键 ==
" ============
" 打开关闭NERDTree
map <F8> :NERDTree<cr>  		
map <F9> :NERDTreeClose<cr>
" 美化JS代码 全文件美化，v 区域美化
"map <c-f> :call JsBeautify()<cr>		
map <c-f> :call RangeJsBeautify()<cr>		
" 代码检查
map <c-j> :JSHint<cr>				
" 查找文件
map <c-p> :CommandT<cr>				
