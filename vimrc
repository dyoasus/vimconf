set nocompatible
filetype on
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'L9'

" Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"Plugin 'user/L9', {'name': 'newL9'}

" == 插件 ==
" ==========
" "代码补全工具  
Bundle 'Shougo/neocomplete.vim'
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
endfunction

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

Bundle 'kien/ctrlp.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'

"主题颜色
Bundle 'lsdr/monokai'
Bundle 'altercation/vim-colors-solarized'

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

" 查找github 及 vim online 上的插件
Bundle 'editorconfig/editorconfig-vim'
" 代码检查
Bundle 'https://github.com/scrooloose/syntastic.git'
let g:syntastic_cpp_check_header = 1
" g:syntastic_jshint_exe
" Bundle 'https://github.com/Shutnik/jshint2.vim.git'		
"搜索 首先安装 brew install the_silver_searcher 
Bundle 'dyng/ctrlsf.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
" 有道翻译
Bundle 'https://github.com/ianva/vim-youdao-translater.git'

"Markdown 
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
" 禁用markdown折叠配置
let g:vim_markdown_folding_disabled=1
" 禁用markdown默认键设置
let g:vim_markdown_no_default_key_mappings=1

vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 
noremap <leader>yd :Yde<CR>

" 多选相同单词并修改
Bundle 'https://github.com/terryma/vim-multiple-cursors.git'
let g:multi_cursor_next_key='<C-n>'

" == 全局配置 ==
" ==============
set laststatus=2
" set t_Co=256
set encoding=utf8
set nobackup
set backspace=2

"去掉vi兼容模式
set nocompatible

" tab 键设定
set tabstop=2  		
set shiftwidth=2
set softtabstop=2
set expandtab

"显示行号
set number		
"无限undo
set noundofile	
" 高亮显示搜索结果
set hlsearch
" set guifont=Menlo\ Regular\ 12
" 代码补全
" imap <c-j> <c-n>

"撤销
" imap <a-u> <Esc>ui
"插入行
" imap <a-o> <Esc>o
" imap <a-O> <Esc>O
"剪切行
" imap <a-d> <Esc>dd
"imap <a-p> <Esc>p
" 合并行
" imap <a-i> <Esc>Ji

" 禁用括号高亮，PS：在括号内输入文字时括号会闪
" let loaded_matchparen=1

"隐藏菜单栏与工具栏
set guioptions-=m		
set guioptions-=T

" 代码折叠基于缩进或语法TODO
"set foldmethod=indent
set foldmethod=syntax
set nofoldenable
" 用空格键来开关折叠
map <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>

" == 颜色配置 ==
" ==============

" == 插件配置 ==
" ==============
let g:Powerline_symbols='unicode'
call vundle#end()            " required
filetype plugin indent on    " required



" 设置颜色主题
" let g:solarized_termcolors=256 在iterm2下禁用此项
syntax enable
" syntax on
set background=dark
" colorscheme monokai 	
colorscheme solarized

" let g:ycm_auto_trigger = 1

" == 快捷键 ==
" ==========="

"插入模式上下移动
imap <c-n> <down>
imap <c-p> <up>
map <c-f> <right>
imap <c-f> <right>
imap <c-b> <left>
map <c-e> <end>
imap <c-e> <end>
map <c-a> <home>
imap <c-a> <home>
imap <c-d> <delete>
imap <c-h> <backspace>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

"  打开关闭NERDTree
map <c-i> :silent! NERDTreeToggle<cr>

" 美化JS代码 全文件美化，v 区域美化
"map <a-f> :call JsBeautify()<cr>		
" map <a-f> :call RangeJsBeautify()<cr>
" imap <a-f> <ESC>:call RangeJsBeautify()<cr>

