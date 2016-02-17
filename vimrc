execute pathogen#infect()
let mapleader = "\<Space>"

syntax on
filetype plugin indent on
set nocompatible
set noshowmode
set smartindent
set expandtab
set number
set tabstop=2 shiftwidth=2
set backspace=2
set scrolloff=4
set timeoutlen=120
set mouse=a
set ttymouse=xterm2
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

let g:rspec_command = "Dispatch bin/rspec {spec}"

let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
set laststatus=2

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

let g:syntastic_always_populate_loc_list = 1
let g:airline#extensions#syntastic#enabled = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_scss_sass_quiet_messages = {
    \ "regex": 'File to import not found or unreadable' }
let g:syntastic_html_tidy_ignore_errors = [
    \  'plain text isn''t allowed in <head> elements',
    \  '<base> escaping malformed URI reference',
    \  'discarding unexpected <body>',
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
autocmd BufWritePre <buffer> :%s/\s\+$//e

" use // to search selection
vnoremap // y/<C-R>"<CR>"

