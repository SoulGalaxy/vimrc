set nocompatible
set t_Co=256
"filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"设置Vundle管理插件"
Plugin 'gmarik/Vundle.vim'

"各种插件"

"tag插件"
Plugin 'majutsushi/tagbar'
"文件树形结构浏览"
Plugin 'scrooloose/nerdtree'
"状态栏插件"
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"自动补全插件"
Plugin 'Shougo/neocomplcache'
"自动缩进插件"
Plugin 'vim-scripts/indentpython.vim'
"PEP8代码风格检查"
Plugin 'nvie/vim-flake8'
"缩进指示线"
Plugin 'Yggdroot/indentLine'
"Python mode"
Plugin 'python-mode/python-mode'

"CtrlP"
Plugin 'ctrlpvim/ctrlp.vim'

"markdown实时预览"
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()
filetype plugin indent on


"设置语法高亮"
syntax on

"设置当前的行号列号"
set ruler
"在状态栏显示正在输入的命令"
set showcmd

"显示行号"
set number

"深色背景优化"
set background=dark

"设置utf-8编码"
set encoding=utf-8
"突出显示当前行"
set cursorline
"突出显示当前列"
set cursorcolumn

"代码折叠"
set foldmethod=syntax


"文件浏览器设置"
map <F2> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc','__pycache__']


"设置tab为4个空格"
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

"布局切换快捷键"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"缩进指示线配置"
let g:indentLine_char=":"
let g:indentLine_enable = 1

"自动补全设置"
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"python-mode设置"
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_python = 'python3'
let g:pymode_folding = 1

nmap f :PymodeLintAuto<cr>

"tarbar设置"
nmap t :TagbarToggle<cr>

"Markdown Preview"
let g:mkdp_path_to_chrome = "google-chrome-stable"
