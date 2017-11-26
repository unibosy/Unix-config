set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

Plugin 'Valloric/YouCompleteMe'
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
set shell=/bin/bash


" size of a hard tabstop
set tabstop=2
"
" " always uses spaces instead of tab characters
set expandtab
"
" " size of an "indent"
set shiftwidth=2
let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib/llvm-3.8/lib/'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

"Completion of braces
set smartindent
imap { {}<ESC>i<CR><ESC>V<O
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i

"highlight
autocmd InsertEnter * se cul
"go to definitions
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"stop completion and accept the selected entry
let g:ycm_key_list_stop_completion = ['<CR>']
"Search by character is highlighted
set hlsearch
set incsearch
