call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'kylef/apiblueprint.vim', { 'for': 'apiblueprint' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nginx/nginx', { 'for': 'nginx' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
call plug#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set tabstop=2 shiftwidth=2 expandtab
set scrolloff=3
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead,BufNewFile config/nginx/*.conf set filetype=nginx
autocmd BufRead,BufNewFile Procfile* set filetype=yaml

let g:ackprg = 'ag --vimgrep'
let g:ack_autofold_results = 1
