set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'http://github.com/vim-scripts/taglist.vim'
Plugin 'https://github.com/tpope/vim-pathogen.git'
Plugin 'https://github.com/tomasr/molokai.git'

"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set runtimepath=~/.vim,$VIMRUNTIME
set guifont=Menlo:h12 "字体
syn on "语法支持
set laststatus=2 "始终显示状态栏
set tabstop=4 "一个制表符的长度
set softtabstop=4 "一个制表符的长度（可以大于tabstop）
set shiftwidth=4 "一个缩进的长度
set expandtab "使用空格替代制表符
set smarttab "智能制表符
set autoindent "自动缩进
set smartindent "只能缩进
set number "显示行号
set ruler "显示位置指示器
"set backupdir=.,$TEMP "设置备份文件目录
"set directory=.,$TEMP "设置临时文件目录
set ignorecase "检索时忽略大小写
set hls "检索时高亮显示匹配项
set helplang=cn "帮助系统设置为中文
set foldmethod=syntax "代码折叠
set cursorline   "显示光标所在行
set cursorcolumn   "显示光标所在列
let mapleader = ","
set cc=80

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set termencoding=utf-8
"set encoding=gbk
"set fileencodings=gbk
"set fileencoding=gbk
"set termencoding=gbk

" 显示缩进
set list
set listchars=tab:>-,trail:-
"hi SpecialKey ctermfg=222 guifg=234

call pathogen#infect()

"color  slate "颜色风格
color  molokai "颜色风格
highlight CursorColumn ctermbg=237
hi CursorLine  cterm=underline ctermbg=NONE ctermfg=NONE guibg=darkred guifg=white
highlight ColorColumn ctermbg=234
hi Whitespace ctermfg=244
hi Comment ctermfg=244


"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=PowerlineSymbols\ for\ Powerline:h18
set nocompatible
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}

"TagList{
"let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"let Tlist_Ctags_Cmd = "/usr/local/Cellar/ctags/bin/ctags"
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
" Sort type 'name' or 'order'
let Tlist_Sort_Type = "name"
let Tlist_Compact_Format = 1
let g:tlist_php_settings = 'php;c:class;f:function'
map <D-7> :TlistToggle <CR>
nmap <silent> <leader>7 :TlistToggle <CR>
"}

"set tags+=~/.vim/tags

" Enable omni completion.
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=xmlcomplete#CompletePHP
autocmd FileType cpp setlocal omnifunc=xmlcomplete#CompleteCPP

" 开关行号显示
nmap <silent> <leader>nn :set nonu<CR>
nmap <silent> <leader>nu :set nu<CR>
" 开关文件浏览器
map <D-1> :NERDTreeToggle <CR>
nmap <silent> <leader>ee :NERDTreeToggle <CR>
" 在文件浏览器中定位当前文件
map <D-!> :NERDTreeFind <CR>
nmap <silent> <leader>et :NERDTreeFind <CR>
" 关闭文件时同时关闭文件浏览器
let NERDTreeQuitOnOpen = 0
" 不显示如下几种扩展名
let NERDTreeIgnore = ['\.d$', '\.o$', '\.pb.cc$', '\.a$']
" 设置nerdTree窗口宽度
let g:NERDTreeWinSize = 40

" 编辑vim配置文件
nmap <silent> <leader>ev :tabe $MYVIMRC<CR>
" 重新加载vim配置
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" 打开文件定位窗口
nnoremap <slient> <D-R> :CommandT<CR>
" 打开最近打开的文件列表
nnoremap <slient> <D-E> :CommandTBuffer<CR>

"对齐线
let g:indent_guides_auto_colors = 1
let g:indent_guides_color_change_percent = 10

"C和CPP语法优化
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
au BufRead,BufNewFile *.flow set filetype=flow
au BufRead,BufNewFile *.go set filetype=cpp

