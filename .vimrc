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
"allow backspace to delete character
set backspace=2

" size of a hard tabstop
set tabstop=2
"
" " always uses spaces instead of tab characters
set expandtab
"
" " size of an "indent"
set shiftwidth=2
"Edit displayed when the cursor state
set ruler
"insert when paste
set paste
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
if has("syntax")
  syntax on
endif
"go to definitions
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"stop completion and accept the selected entry
let g:ycm_key_list_stop_completion = ['<CR>']
"Search by character is highlighted
set hlsearch
set incsearch
"open ctags
map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
set tags=/home/wangshiwei/ars/code_ars/fork_ars/ServerSDK-Video/tags;
set autochdir
"""""""""""""""""""""""cscope setting"""""""""""""""""" 
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
set csprg=/usr/bin/cscope
set csto=1
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
endif
set csverb
endif
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
