" Vundle ============================================
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-dispatch'
Plugin 'jremmen/vim-ripgrep'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'eiginn/netrw'
Plugin 'sickill/vim-monokai'
Plugin 'folke/tokyonight.nvim'
call vundle#end()
" ====================================================

syntax on
colorscheme monokai
filetype plugin indent on

if has('gui_running')
  set background=dark
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

nmap <C-f> :call :FZF

" Use .gitignore to filter CtrlP entries
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Kill trailing whitespace on write
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
