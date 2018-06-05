colorscheme molokai
if &diff
    colorscheme jellybeans
endif


syntax on
set hidden
set autoindent
"set smartindent
set hlsearch
set incsearch

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set foldmethod=indent
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors


" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let mapleader = ","

call pathogen#infect()

if has("autocmd")
	" Enable filetype detection
	filetype on
	filetype plugin on
	autocmd Syntax c,cpp,python,groovy,java,scala,vim setlocal foldmethod=syntax
	autocmd Syntax xml,html,xhtml setlocal foldmethod=indent
	autocmd Syntax c,cpp,groovy,python,java,scala,vim,xml,html,xhtml,perl normal zR
	autocmd BufNewFile,BufRead *.gsp,*.groovy setfiletype groovy
	autocmd BufNewFile,BufRead *.log,*messages setfiletype log4j 
endif

" Map NERDTreeToggle to convenient key
nmap <leader>n :NERDTreeToggle<cr>

" Map TagbarToggle to convenient key
nmap <leader>t :TagbarToggle<cr>
" Tagbar support for groovy
let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds' : [
    \ 'p:package',
    \ 'c:class',
    \ 'i:interface',
    \ 'f:function',
    \ 'v:variables',
    \ ]
    \ }

" Use symbols in Powerline
let g:Powerline_symbols = 'compatible'

" Recommended settings for BufExplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
