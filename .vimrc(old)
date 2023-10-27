" vim-plug - plugin manager, install by yourself, then execute :PlugInstall
call plug#begin()

Plug 'morhetz/gruvbox' " ColorScheme
Plug 'scrooloose/nerdtree' " Filesystem explorer
Plug 'jistr/vim-nerdtree-tabs' " NERDtree and tabs together
Plug 'tpope/vim-commentary' " Use gcc to comment out a line
Plug 'vim-airline/vim-airline' "Show statusline at bottom
Plug 'vim-airline/vim-airline-themes' "Themes for vim-airline
Plug 'tpope/vim-fugitive' "Git wrapper
Plug 'airblade/vim-gitgutter' "Show git diff
Plug 'ntpeters/vim-better-whitespace' "Highlighting withspaces in normal mode
Plug 'Raimondi/delimitMate' "Automatic closing 'tag
Plug 'vim-syntastic/syntastic' "Syntax checks
" Plug 'majutsushi/tagbar' "display tags in a separeted windows calling TagbarToggle
Plug 'sheerun/vim-polyglot' "Languages packs
Plug 'w0rp/ale' "Asynchronous linting/fixing
" Plug 'SirVer/ultisnips' "snippets for vim
Plug 'fatih/vim-go' ,{'do': ':GoInstallBinaries'} "Go development Plugin

call plug#end()

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
set hlsearch                            " highlight matches
set incsearch                           " incremental searching
set ignorecase                          " searching are case insensitive...
set smartcase                           " ... unless they contain at least one capital letter

" Customizationm
set ls=2                                " always show status bar
set number                              " show line numbers
set relativenumber                      " show relative line numbers
set ruler

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
        au GUIEnter * simalt ~x "Start gvim maximezed
    endif
    set guioptions= " disable all UI options
endif

" colors
set t_Co=256
colorscheme gruvbox                       " colerscheme
set background=dark

set completeopt=menuone,longest,preview " simple autocomplete for anything
set wildmode=list,longest,full          " autocomplete for paths and files

set hidden                              " changes buffers without warnings even when there are unsaved changes
set mouse=a                             " enable use of the mouse for all modes
"" Directories for swp files
set nobackup
set noswapfile

" highlight trailing white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

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

" nerdtree
let g:NERDTreeShowBookmarks=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeShowHidden=1 "Display hidden files"
let g:NERDTreeWinSize = 30
let g:nerdtree_tabs_focus_on_files=1 "When switching into a tab, focus on file windows
let g:nerdtree_tabs_open_on_gui_startup=0 "On GVim Start with nerdtree closed
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeTabsToggle<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" VsVim
map gi :vsc Edit.GoToImplementation<CR>
map gr :vsc Edit.FindAllReferences<CR>
map gp :vsc Edit.PeekDefinition<CR>

" airline
let g:airline_theme = 'biogoo'
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1

" Go
" run :GoBuild or :GoTestCompile based on the go file
" (calling it with <leader> b)
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

let g:go_fmt_command = 'goimports'
let g:go_list_type = 'quickfix' "Only Use quickfix windows
let g:go_auto_type_info = 1 "Show go Info on cursor

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

augroup go

    au!
    au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
    au FileType go nmap <leader>r  <Plug>(go-run)
    au FileType go nmap <leader>t  <Plug>(go-test)
    au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
    au filetype go inoremap <buffer> . .<C-x><C-o>
augroup end
