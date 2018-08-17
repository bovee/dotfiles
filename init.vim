" to be placed in ~/.config/nvim
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'

" language specific plugins
" Plug 'klen/python-mode'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'ap/vim-css-color'
Plug 'moll/vim-node'
Plug 'tmhedberg/matchit'
Plug 'zah/nim.vim'

call plug#end()

set ruler
set encoding=utf-8
set t_Co=256
set background=dark
set backspace=indent,eol,start
colorscheme gruvbox

autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType nim setlocal expandtab shiftwidth=2 tabstop=2
au FileType rust nmap <silent> <C-]> <Plug>(rust-def-split)

" let g:pymode_rope = 0
" let g:pymode_folding = 0 " this is extremely slow for some reason
" let g:pymode_options_max_line_length = 100

let g:racer_cmd = "racer"
let g:racer_experimental_completer = 1
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_python_flake8_args = '--max-line-length=100'

" change :Explore commands style
let g:netrw_liststyle=3
