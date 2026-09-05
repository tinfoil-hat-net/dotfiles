syntax on
colorscheme lunaperche

" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

set nocompatible
set number
set tabstop=4
set ignorecase
set hlsearch
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c
set belloff+=ctrlg

set statusline=
set statusline+=%{Changestatuslinecolor()}
set statusline+=%1*\ %{g:currentmode[mode()]}
set statusline+=%3*\ %f\ %4*\ 
set statusline+=%=\ 
set statusline+=%3*\ %l\ of\ %L\ %2*\ 
set statusline+=%2*%{&filetype}\ 
set noshowmode

set laststatus=2
set statusline=
set statusline+=\ %f%m%r%h%w\              " file + flags
set statusline+=%=                         " right align
set statusline+=\ %y                       " filetype
set statusline+=\ %{&fileencoding}
set statusline+=\ [%{&fileformat}]
set statusline+=\ %l/%L\ (%p%%)\ %c\       " line/total (%) column

"tabulation"
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set noexpandtab
set noshiftround

"searching"
set incsearch
set hlsearch
set ignorecase
set smartcase

"colorscheme without colorscheme plugin"
hi linenr ctermfg=0
hi cursorline ctermbg=NONE ctermfg=NONE cterm=NONE
hi cursorlinenr ctermbg=NONE ctermfg=NONE cterm=NONE
hi comment ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=0 ctermfg=NONE
hi search ctermbg=0 ctermfg=NONE
hi vertsplit ctermbg=0 ctermfg=0 cterm=NONE
hi tablinefill ctermbg=NONE ctermfg=NONE cterm=NONE
hi tabline ctermbg=NONE ctermfg=0
hi tablinesel ctermbg=6 ctermfg=7
hi group1 ctermbg=NONE ctermfg=0
hi group2 ctermbg=NONE ctermfg=0
match group1 /\s\+$/
match group2 /\t/

"tab autocomplete without autocomplete plugin"
inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
return "\<C-P>"
else
return "\<Tab>"
endif
endfun
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
if v:char =~ '\K'
\ && getline('.')[col('.') - 4] !~ '\K'
\ && getline('.')[col('.') - 3] =~ '\K'
\ && getline('.')[col('.') - 2] =~ '\K'
\ && getline('.')[col('.') - 1] !~ '\K'
call feedkeys("\<C-P>", 'n')
end
endfun

"statusline without statusline plugin"
let g:currentmode={
\ 'n'  : 'Normal ',
\ 'no' : 'N·Operator Pending ',
\ 'v'  : 'Visual ',
\ 'V'  : 'V·Line ',
\ 'x22' : 'V·Block ',
\ 's'  : 'Select ',
\ 'S'  : 'S·Line ',
\ 'x19' : 'S·Block ',
\ 'i'  : 'Insert ',
\ 'R'  : 'Replace ',
\ 'Rv' : 'V·Replace ',
\ 'c'  : 'Command ',
\ 'cv' : 'Vim Ex ',
\ 'ce' : 'Ex ',
\ 'r'  : 'Prompt ',
\ 'rm' : 'More ',
\ 'r?' : 'Confirm ',
\ '!'  : 'Shell ',
\ 't'  : 'Terminal '
\}

hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi statusline ctermbg=0 ctermfg=NONE
hi statuslinenc ctermbg=0 ctermfg=0

function! Changestatuslinecolor()
if (mode() =~# '\v(n|no)')
exe 'hi! user1 ctermbg=1 ctermfg=0'
elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'Visual Block' || get(g:currentmode, mode(), '') ==# 't')
exe 'hi! user1 ctermbg=5 ctermfg=0'
elseif (mode() ==# 'i')
exe 'hi! user1 ctermbg=2 ctermfg=0'
elseif (mode() ==# 'R')
exe 'hi! user1 ctermbg=3 ctermfg=0'
else
exe 'hi! user1 ctermbg=1 ctermfg=0'
endif
return ''
endfunction
