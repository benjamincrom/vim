set nocompatible

" Plugins live in ~/.vim/bundle and are loaded by pathogen.
" Vundle.vim is not used.
let g:pathogen_disabled = ['Vundle.vim']

" Completion as you type comes from YouCompleteMe. This is its legacy-vim-8.2
" branch: the current release needs Vim 9.1.0016+ and Python 3.12+, which
" arrive with Ubuntu 24.04 (then switch the checkout to master and rebuild).
" jedi-vim stays for goto/rename/docs but leaves completion to YouCompleteMe.
let g:jedi#completions_enabled = 0

" LaTeX: vimtex (v2.16, the last release for Vim 8.2) supplies commands,
" \ref, \cite, environments and file names to YouCompleteMe.
let g:tex_flavor = 'latex'
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
autocmd VimEnter * if exists('g:vimtex#re#youcompleteme') | let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme | endif

execute pathogen#infect()

set background=dark
colors koehler
syntax on
filetype plugin indent on
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set ignorecase smartcase
set incsearch
set wildmenu
set backspace=indent,eol,start
" Esc takes effect at once (pairs with escape-time in tmux.conf).
set ttimeout ttimeoutlen=50

set formatoptions-=r
set formatoptions-=c
set formatoptions-=o

hi TabLineSel ctermfg=White ctermbg=DarkRed
hi TabLine ctermfg=White ctermbg=DarkGreen
hi TabLineFill ctermfg=White ctermbg=DarkGreen
hi TabLineStatusLine ctermfg=White ctermbg=DarkGreen
hi StatusLine ctermfg=White ctermbg=DarkGreen
hi StatusLineFill ctermfg=White ctermbg=DarkGreen
hi Directory ctermfg=LightGreen
hi CursorLine ctermbg=None ctermfg=Yellow

if has('persistent_undo')
    set undodir=$HOME/.vim/undo
    set undolevels=10000
    set undofile
endif

match Error /\%101v.\+/
