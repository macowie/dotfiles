" Vundle ============================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
" ====================================================

let mapleader = "\<Space>"
syntax on
filetype plugin indent on
if has('gui_running')
  set background=dark
  colorscheme solarized
  set guifont=Hack:h15
endif
set noshowmode
set smartindent
set expandtab
set number
set splitbelow
set splitright
set tabstop=2 shiftwidth=2
set backspace=2
set scrolloff=4
set tw=80
set timeoutlen=90
set clipboard=unnamed
set mouse=a
set ttymouse=xterm2
set shell=/bin/bash
if has('mouse_sgr')
  set ttymouse=sgr
endif

nmap ; :
nnoremap <Leader>w :w<CR>
nnoremap <Leader>f :Explore<CR>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set laststatus=2

let g:rspec_command = "Dispatch bin/rspec {spec}"

let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 1

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

let g:syntastic_always_populate_loc_list = 1
let g:airline#extensions#syntastic#enabled = 1
let g:syntastic_auto_jump = 2
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_ruby_checkers = ["rubocop"]
let g:syntastic_loc_list_height = 4
let g:syntastic_scss_sass_quiet_messages = {
    \ "regex": 'File to import not found or unreadable' }
let g:syntastic_html_tidy_ignore_errors = [
    \  'plain text isn''t allowed in <head> elements',
    \  '<base> escaping malformed URI reference',
    \  'discarding unexpected <body>',
    \  '<a> escaping malformed URI reference',
    \  '<script> escaping malformed URI reference',
    \  '</head> isn''t allowed in <body> elements'
    \ ]

let g:netrw_liststyle=3
let g:netrw_list_hide= '.*\.swp$'

" Kill trailing whitespace on write
set wrap
set linebreak
" note trailing space at end of next line
set showbreak=>\ \ \
autocmd FileType c,cpp,java,php,rb,js,coffee,scss,css autocmd BufWritePre <buffer> %s/\s\+$//e

" use // to search selection
vnoremap // y/<C-R>"<CR>"

