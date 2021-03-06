#!/usr/bin/env bash

warn ()
{
    printf '\033[0;31m%s\033[0m\n' "$1" >&2
}

die ()
{
    warn "$1"
    exit 1
}

printf '\033[0;34m%s\033[0m\n' "Thanks for installing yaotian's vim!"
printf '\033[0;34m%s\033[0m\n' '                      '

# check requirements
printf '\033[0;34m%s\033[0m\n' "Checking requirements for vim..."
printf '\033[0;34m%s\033[0m\n' "Checking vim version..."
vim --version | grep 7.3 || vim --version | grep 7.4 || die "Your vim's version is too low!\nPlease download higher version(7.3+) from http://www.vim.org/download.php"

printf '\033[0;34m%s\033[0m\n' "Checking if git exists..."
which git || die "No git installed!\nPlease install git from http://git-scm.com/downloads/"

printf '\033[0;34m%s\033[0m\n' "Check if ctags exists..."
which ctags || warn "No ctags installed!\nPlease install ctags form http://ctags.sourceforge.net/ after intallation!"

printf '\033[0;34m%s\033[0m\n' "Check if golang exists..."
which go || warn "No golang installed\n Please install from http://golang.org"


printf '\033[0;34m%s\033[0m\n' "Check if jshint exists..."
which jshint || warn "No jshint installed"


# back up existing vim stuff
printf '\033[0;34m%s\033[0m\n' "Backing up current vim config..."
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv -f $i $i.backup; done

# install vim
printf '\033[0;34m%s\033[0m\n' "Cloning yaotian vim..."
rm -rf $HOME/.vim
git clone https://github.com/yaotian/.vim.git $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vim/.vimrc

printf '\033[0;34m%s\033[0m\n' "Installing Vundle..."
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle


printf '\033[0;34m%s\033[0m\n' "Installing font for powerline..."
mkdir $HOME/.fonts
wget -O $HOME/.fonts/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
fc-cache -vf $HOME/.fonts
mkdir $HOME/.fonts.conf.d
wget -O $HOME/.fonts.conf.d/10-powerline-symbols.conf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf

printf '\033[0;34m%s\033[0m\n' "Installing plugins using Vundle..."
vim +'set nospell' +BundleInstall! +BundleClean! +qa! 

printf '\033[0;34m%s\033[0m\n' "Yaotian's vim has been installed. Just enjoy vimming!"
