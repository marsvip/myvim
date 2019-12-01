
" common settings
set number
set visualbell

filetype plugin indent on
syntax on

set tabstop=8
set expandtab
set shiftwidth=2

" true color
" set termguicolors

set background=dark
" color setting
" hi Search ctermbg=Gray
" hi Search ctermfg=Red
"colorscheme carbonized-dark
"colorscheme OceanicNext
"colorscheme materialbox
"colorscheme OceanicNextLight
"colorscheme meta5
"colorscheme PaperColor
"colorscheme molokai
"  colorscheme gruvbox
" colorscheme one
"colorscheme github
"colorscheme tender
"colorscheme jellybeans

" plugin management
call plug#begin('~/.nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'jacoborus/tender.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'scrooloose/nerdcommenter'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
"Plug 'ervandew/supertab'

call plug#end()

colorscheme onedark


" ymc
let g:ycm_always_populate_location_list = 1
"let g:ycm_key_list_select_completion = ['tab', '<Down>']
"let g:SuperTabDefaultCompletionType = '<tab>'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<A-e>'
let g:UltiSnipsJumpForwardTrigger='<A-e>'
let g:UltiSnipsJumpBackwardTrigger="<A-b>"


" easy motion key
:map tw        <Plug>(easymotion-w)
:map tb        <Plug>(easymotion-b)

" my kep maps
" move 
:map <C-j>     10<C-e>
:map <C-k>     10<C-y>
:map <C-h>     <C-w><left>
:map <C-l>     <C-w><right>

" windows
:map vs         :vsplit<CR>
:map tab :tabnew
nnoremap <S-h> :vertical res -10<CR>
nnoremap <S-l> :vertical res +10<CR>
nnoremap <S-j> :res +5<CR>
nnoremap <S-k> :res -5<CR>

" code navigation
:map <C-[>g :YcmCompleter GoTo<CR>

" terminal
:map ft :te<CR> i
:map fv :vsplit<CR>:te<CR> i
:tnoremap <Esc> <C-\><C-n>
:map tt :tabn<CR>
:map tT :tabp<CR>

" easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" air line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
source ~/.vim/cscope_maps.vim

" handle comments

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCustomDelimiters = { 'h': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDTrimTrailingWhitespace = 1
" block comment
nmap eb vip<leader>cs 
" block uncomment
nmap et vip<leader>c<space>
" add comment at end
nmap ee <leader>cA
" comment/uncomment line
nmap el <leader>ci

" my work flow


