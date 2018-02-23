#!/bin/bash

curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh

sourse $HOME/.bashrc

$HOME/.vimpkg/bin/apt-vim install -y https://github.com/tpope/vim-fugitive.git
$HOME/.vimpkg/bin/apt-vim install -y https://github.com/scrooloose/nerdtree.git
$HOME/.vimpkg/bin/apt-vim install -y https://github.com/vim-airline/vim-airline
$HOME/.vimpkg/bin/apt-vim install -y https://github.com/junegunn/fzf.vim.git

cp vimrc $HOME/.vimrc
cp gitconfig $HOME/.gitconfig
cp tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.vim/tmp
mkdir -p $HOME/.vim/colors && cp badwolf.vim $HOME/.vim/colors/badwolf.vim

git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

