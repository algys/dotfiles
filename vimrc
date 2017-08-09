let g:airline#extensions#tagbar#enabled = 0

execute pathogen#infect()
call pathogen#helptags()

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <Tab> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set exrc
set t_Co=256
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=DarkGray
colorscheme badwolf
syntax on

set noshowmode
set laststatus=2
let g:bufferline_echo = 0

set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab
