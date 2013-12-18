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

curtime ()
{
    date '+%Y-%m-%d-%H-%M-%S'   
}

printf '\033[0;34m%s\033[0m\n' "Thanks for installing yaotian's vim!"
printf '\033[0;34m%s\033[0m\n' '                      '

# check requirements
printf '\033[0;34m%s\033[0m\n' "Checking requirements for vim..."
printf '\033[0;34m%s\033[0m\n' "Checking vim version..."
# vim --version | grep 7.3 || vim --version | grep 7.4 || die "Your vim's version is too low!\nPlease download higher version(7.3+) from http://www.vim.org/download.php"
vim --version | grep 7.3 || vim --version | grep 7.4 || sudo -E apt-get install vim

printf '\033[0;34m%s\033[0m\n' "Checking if git exists..."
# which git || die "No git installed!\nPlease install git from http://git-scm.com/downloads/"
which git || sudo -E apt-get install git

printf '\033[0;34m%s\033[0m\n' "Check if ctags exists..."
# which ctags || warn "No ctags installed!\nPlease install ctags form http://ctags.sourceforge.net/ after intallation!"
which ctags || sudo -E apt-get install exuberant-ctags

printf '\033[0;34m%s\033[0m\n' "Check if golang exists..."
which go || sudo -E apt-get install golang


printf '\033[0;34m%s\033[0m\n' "Check if npm exists..."
which npm || sudo -E apt-get install nodejs npm

printf '\033[0;34m%s\033[0m\n' "Check if jshint exists..."
which jshint || sudo -E npm install jshint -g


printf '\033[0;34m%s\033[0m\n' "Check if autopep8 exists..."
which autopep8 || sudo -E easy_install autopep8

printf '\033[0;34m%s\033[0m\n' "Check if pep8 exists..."
which pep8 ||sudo -E easy_install pep8


# back up existing vim stuff
printf '\033[0;34m%s\033[0m\n' "Backing up current vim config..."
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv -f $i $i.backup.$(curtime); done

exit

# install vim
printf '\033[0;34m%s\033[0m\n' "Cloning yaotian vim..."
git clone https://github.com/yaotian/.vim.git $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc

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
