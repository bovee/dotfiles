" to be placed in ~/.config/nvim or ~/.vimrc
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

set nobackup
set nowritebackup
set lazyredraw

set ruler
set number
set relativenumber
set hlsearch
set incsearch
set showmatch

set encoding=utf-8
set t_Co=256
set background=dark
set backspace=indent,eol,start
colorscheme gruvbox

autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 omnifunc=javascript#CompleteJS
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal expandtab shiftwidth=2 tabstop=2 omnifunc=javascript#CompleteJS
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 omnifunc=python3complete#Complete
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 omnifunc=htmlcomplete#CompleteTags
autocmd FileType nim setlocal expandtab shiftwidth=2 tabstop=2
au FileType rust nmap <silent> <C-]> <Plug>(rust-def-split)

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

let g:ale_linters = {'javascript': ['eslint'], 'rust': ['rls']}
let g:ale_rust_rls_toolchain = 'stable' 
let g:ale_python_flake8_args = '--max-line-length=100'
let g:ale_python_flake8_use_global = 1

" change :Explore commands style
let g:netrw_liststyle = 3
let g:netrw_banner = 0
