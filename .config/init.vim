syntax on

call plug#begin('~/.config/nvim/plugged')
    Plug 'ntk148v/vim-horizon'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" ↓↓↓↓'ntk148v/vim-horizon'↓↓↓↓

" if you don't set this option, this color might not correct
set termguicolors

colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}

" ↓↓↓↓'preservim/nerdtree'↓↓↓↓

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
