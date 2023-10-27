set noerrorbells visualbell t_vb=   " disable bell's sound
set nocompatible            " choose no compatibibility with legacy vi

syntax enable
syntax on
set encoding=utf-8
set ttyfast "Supposed make terminal faster
set showcmd               " display incomplete commands
set updatetime=100 "The length of time Vim waits after you stop typing before it triggers the plugin
filetype plugin indent on       " load file type plugins + indentation
set omnifunc=syntaxcomplete#Complete "autocomple
set autowrite " Save when :make is called
set autoread " Reload files changes outside vim

" Whitespace
set nowrap                " don't wrap lines
set tabstop=4 shiftwidth=4        " a tab is four spaces
set expandtab             " use spaces not tab
set backspace=indent,eol,start      " backspace through everything in INSERT MODE

" Searching
set hlsearch   " Searching
set hlsearch   " highlight matches
set incsearch  " incremental searching
set ignorecase " searching are case insensitive...
set smartcase  " ... unless they contain at least one capital letter                         " highlight matches
set incsearch  " incremental searching
set ignorecase " searching are case insensitive...
set smartcase  " ... unless they contain at least one capital letter

set ls=2 " always show status bar
set number " show line numbers
set relativenumber " show relative line numbers
set ruler

" colors
set t_Co=256
set background=dark

set completeopt=menuone,longest,preview " simple autocomplete for anything
set wildmode=list,longest,full          " autocomplete for paths and files

set hidden                              " changes buffers without warnings even when there are unsaved changes
set mouse=a                             " enable use of the mouse for all modes

set nobackup
set noswapfile

" map leader to spacebar
let mapleader = " " 

" Abreviations to prevent miss typings like :W
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Qa! qa!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev Qa qa

" addtional keymaps
imap jj <esc>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>
