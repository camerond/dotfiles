call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'isRuslan/vim-es6'
Plug 'mileszs/ack.vim'
" Plug 'chemzqm/vim-jsx-improve'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mxw/vim-jsx'
Plug 'mhartington/nvim-typescript'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'neomake/neomake'
call plug#end()

syntax on
colorscheme eddie
set background=dark
let g:ctrlp_max_files=0
set wildignore+=*/.git/*,*/node_modules/*,*/vendor
set number
set incsearch
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,trail:▫,eol:¬
set nobackup
set nowritebackup
set backspace=indent,eol,start

let mapleader = ","
map <Leader>p :FZF<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Tab> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-k> :tabn<CR>
map <C-j> :tabp<CR>
map <C-x> :wq<CR>
map <C-f> :NERDTreeFind<CR>

" open quickbuf results in a new tab
set switchbuf+=newtab

filetype plugin indent on

" RSpec.vim mappings
let g:rspec_command = "!bundle exec rspec --color {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" enable neomake/eslint
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_scss_enabled_makers = ['sasslint']

" enable deoplete for typescript shit
let g:deoplete#enable_at_startup = 1

" run neomake on every save
autocmd! BufWritePost * Neomake

command SetRoot :lcd %:p:h

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ackprg = 'ag --nogroup --nocolor --column'

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

"FZF
set rtp+=/usr/local/opt/fzf
