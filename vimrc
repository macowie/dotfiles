execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = "\<Space>"

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set nocompatible
set noshowmode
set smartindent
set expandtab
set number
set tabstop=2 shiftwidth=2
set backspace=2
set scrolloff=4
set timeoutlen=50
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

set wrap
set linebreak
" note trailing space at end of next line
set showbreak=>\ \ \
autocmd BufWritePre <buffer> :%s/\s\+$//e

function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    redraw!
    return
  endtry
  redraw!
    exec a:vim_command . " " . selection
endfunction
nnoremap <leader>f :call SelectaCommand("find * -type f", "", ":e")<cr>
