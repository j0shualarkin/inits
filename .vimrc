" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" ---------------------------------------------------------------------

set nocompatible
filetype plugin indent on
filetype plugin on

" vim package manager
execute pathogen#infect()

" syntax highlighting
syntax on

" jump to begining/end of the line
nnoremap H ^
nnoremap L $

" move over lines visually 
nnoremap j gj
nnoremap k gk

set hlsearch
set incsearch
set showmatch
set autoindent
set showcmd
set cursorline

" ---------------------------------------------------------------------
"  show history when running a command with : or searching with /
nnoremap : q:i
nnoremap / q/i

"---------------------------------------------------------------------
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" ---------------------------------------------------------------------
set scrolloff=30
set matchpairs+=<:>
set wrap

" god mode
set relativenumber
set number 

" ---------------------------------------------------------------------

" C-j adds a blank line below the currently and doesn't move there (no insert mode)
nnoremap <silent><C-j> :set paste <CR>m`o<Esc>``:set nopaste<CR>

" C-k adds a blank line above the currently and doesn't moves there (no insert mode)
nnoremap <silent><C-k> :set paste <CR>m`O<Esc>``:set nopaste<CR>

" ---------------------------------------------------------------------
let g:highlightedyank_highlight_duration = 500

" typescript
" au BufRead,BufNewFile *.ts setfiletype typescriptA
" Plugin 'leafgarland/typescript-vim



" ---------------------------------------------------------------------
" Coloring
syntax on
colorscheme abstract
set background=dark
" set background=dark
" autocmd VimEnter * hi Normal ctermbg=None
" murphy *torte archery jellybeans lightning *lucius materialbox gruvbox
" scheakur
nnoremap c1 :colorscheme torte<cr>
nnoremap c2 :colorscheme abstract<cr>
nnoremap c3 :colorscheme murphy<cr>
nnoremap c4 :colorscheme gruvbox<cr>
" nnoremap c0 :colorscheme seoul256<cr>
" nnoremap c5 :colorscheme jellybeans<cr>
" nnoremap c6 :colorscheme lightning<cr>
" nnoremap c7 :colorscheme scheakur<cr>
" nnoremap c8 :colorscheme materialbox<cr>
" nnoremap c9 :colorscheme lucius<cr>



syntax enable
" EOF
