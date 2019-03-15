call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'kylef/apiblueprint.vim', { 'for': 'apiblueprint' }
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
Plug 'chr4/nginx.vim', { 'for': 'nginx' }
Plug 'nathanielc/vim-tickscript', { 'for': 'tick' }
Plug 'chriskempson/vim-tomorrow-theme'
call plug#end()

let g:plug_threads = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set tabstop=2 shiftwidth=2 expandtab
set scrolloff=3
set splitbelow
set splitright
set nowrap

colorscheme Tomorrow

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead,BufNewFile Procfile* set filetype=yaml
autocmd BufRead,BufNewFile config/nginx/*.conf set filetype=nginx

let g:ackprg = 'ag --vimgrep'
let g:ack_autofold_results = 1
let g:tick_fmt_autosave = 0

" https://kinbiko.com/vim/my-shiniest-vim-gems/
match ErrorMsg '\%>120v.\+'
match ErrorMsg '\s\+$'
