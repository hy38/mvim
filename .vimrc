set number
set nocompatible              " be iMproved, required
set autoindent
set smartindent
set tabstop=4
set shiftwidth=2
set softtabstop=4
set smarttab
set expandtab
set textwidth=0
set cole=0

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'jpo/vim-railscasts-theme'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'whonore/coqtail'
Plug 'junegunn/vim-easy-align'
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}

call plug#end()            " required
colorscheme gruvbox
set background=dark

map <C-n> <ESC>:NERDTreeToggle<CR> 
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" for Coqtail
nmap <C-k> <leader>cj
nmap <C-j> <leader>ck
nmap <C-l> <leader>cl

nnoremap H gT
nnoremap L gt

" ctrlpvim: ignore some folders and files for finding 
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|public$\|log$\|tmp$\vendor$',
      \ 'file': '\v\.(exe|sh|jar|class)$'
      \}

" clear the conceal mode in tex files
let g:tx_conceal=''

" ctrlpvim: setting a path where finding a file
let g:ctrlp_working_path_mode = 'ra'

" ctrlpvim: setting mru as default mode
let g:ctrlp_map='<C-p>'

" ctrlpvim: removing the limit of maxinum number of files
let g:ctrlp_max_files=0

" gruvbox: making background darker
let g:gruvbox_contrast_dark="hard"

let g:indentLine_setColors = 0

let g:tex_conceal = ''
let &conceallevel = 0
"setl tw=0
"setl fo=
"setl nojs
"setl nosmartindent

" Strip trailing whitespaces
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" For all file types
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Using file extension
"autocmd BufWritePre *.h,*.c,*.java :call <SID>StripTrailingWhitespaces()
