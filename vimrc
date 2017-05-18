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
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
" ====================================================

syntax on
filetype plugin indent on

if has('gui_running')
  set background=dark
  colorscheme solarized
  set guifont=Hack:h15
endif
if has('mouse_sgr')
  set ttymouse=sgr
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
set laststatus=2
set tw=80
set timeoutlen=90
set clipboard=unnamed
set mouse=a
set ttymouse=xterm2
set shell=/bin/bash

" Quickcommand
nmap ; :
let mapleader = "\<Space>"
" Quicksave
nnoremap <Leader>w :w<CR>
" Quicksearch selection
vnoremap // y/<C-R>"<CR>"

" netrw
nnoremap <Leader>f :Explore<CR>
let g:netrw_liststyle=3
let g:netrw_list_hide= '.*\.swp$'

" Rails/RSpec
let g:rspec_command = "Dispatch bin/rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 1

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ack.vim -- Use the_silver_searcher instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Kill trailing whitespace on write
set wrap
set linebreak
set showbreak=>\ \ \
autocmd FileType c,cpp,java,php,rb,js,coffee,scss,css autocmd BufWritePre <buffer> %s/\s\+$//e


