call plug#begin("~/.vim/plugged")
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'patstockwell/vim-monokai-tasty'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'ajh17/VimCompletesMe'
Plug 'majutsushi/tagbar', { 'do': 'sudo apt-get install exuberant-ctags' }
Plug 'Raimondi/delimitMate'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'maralla/validator.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'romainl/vim-cool'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
call plug#end()

let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:validator_permament_sign = 1
let g:indentLine_concealcursor = ""
filetype plugin on
nnoremap <C-F> :NERDTreeToggle<CR>
nnoremap <C-V> :Files<CR>
nnoremap <C-G> :TagbarToggle<CR>
nnoremap <C-U> :MarkdownPreview<CR>
nnoremap <C-J> :bnext<CR>
nnoremap <C-K> :bprev<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
cnoreabbrev wq w<bar>Sayonara!
cnoreabbrev  q       Sayonara!
cnoreabbrev wQ w<bar>Sayonara
cnoreabbrev  Q       Sayonara
inoremap qq <ESC>
colorscheme vim-monokai-tasty
set background=dark
set number relativenumber
set ic
set hlsearch
set incsearch
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set cindent
set listchars=tab:>-
set list
set backspace=indent,eol,start
set hidden
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
map ; :Files<CR>
