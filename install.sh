#!/bin/bash

#for vim configuration
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#for vim-coq plugin
git clone https://github.com/let-def/vimbufsync.git ~/.vim/pack/coq/start/vimbufsync
#copy vim configuration file
cp .vimrc ~/.vimrc
#install plugins
vim +PlugInstall +qall

# use vi as git editor (for commit ammend, ...)
git config --global core.editor vi

# ignore globally
cp .gitignore_global ~/.gitignore_global

# Appends auto-complete options to ~/.bashrc
{
    echo "# tab auto-complete"
    echo "bind 'TAB:menu-complete'"
    echo "bind '\"\\e[Z\": menu-complete-backward'"
    echo "bind \"set show-all-if-ambiguous on\""
    echo "bind \"set menu-complete-display-prefix on\""
} >> ~/.bashrc
