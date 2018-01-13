set expandtab
set softtabstop=4
set shiftwidth=4
set cino=g0:0N-s
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

set rtp+=~/.fzf

set exrc
set t_Co=256
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=DarkGray
colorscheme badwolf

set directory=$HOME/.vim/tmp/

set nowrap
set noshowmode
set laststatus=2

map <F8> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-\> :%s/\s\+$//e<CR>

set listchars=trail:·,eol:¬,nbsp:_
set list

map <S-z> <C-w><C-w>

execute pathogen#infect()
call pathogen#helptags()

map <TAB> :NERDTreeToggle<CR>
map <S-TAB> :Tagbar<CR>
map <C-g> :Gblame<CR>
map <S-f> :Files<CR>
map <S-g> :GFiles<CR>

