
set hidden
set number relativenumber
set nu rnu
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set signcolumn=yes
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set laststatus=2
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=grey

call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'nvie/vim-flake8'
Plug 'psf/black'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'git@github.com:kien/ctrlp.vim.git'

call plug#end()


colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 20

let g:ctrlp_use_caching = 0

autocmd vimenter * NERDTree

nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" YCM remaps
"nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>


nnoremap <F6> :setlocal spell! spelllang=en_us<CR>
" nnoremap <leader>
