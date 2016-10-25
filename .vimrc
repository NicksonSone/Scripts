set nocompatible              " be iMproved, required
filetype off                  " required

set mouse=a
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Directory tree
Plugin 'The-NERD-Tree'  
" Code structure
Plugin 'tagbar' 
" High light python
Plugin 'klen/python-mode'
" Auto complete
Plugin 'Valloric/YouCompleteMe'  

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
autocmd Filetype tex source ~/.vim/auctex.vim

" strips off shift key in normal mode 
nnoremap ; :
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set clipboard=unnamedplus
set guioptions+=a

set expandtab
set tabstop=4           " soft tab of 4 spaces
set softtabstop=4
set shiftwidth=4        " number of spaces to use for autoindenting
set autoindent          " always set autoindenting on
set textwidth=80        " limit length of line to 80 characters
set incsearch           " search as charater are entered
set hlsearch            " hight light search term
set pastetoggle=<F2>    " toggle paste mode, paste text without autoindent
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
colorscheme darkblue

" spell check the text
func! WordProcessor()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu
com! WP call WordProcessor()
