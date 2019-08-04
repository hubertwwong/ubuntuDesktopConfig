#!/bin/bash
echo "> bash > Setting up bash aliases"

if [ -z "$INSTALLDIR" ]; then
  echo "Need to set INSTALLDIR to set paths"
  exit 1
fi

rm -f ~/.bash_aliases
ln -s $INSTALLDIR/dotfiles/.bash_aliases ~/.bash_aliases
rm -f ~/.tmux.conf
ln -s $INSTALLDIR/dotfiles/.tmux.conf ~/.tmux.conf
source ~/.bash_aliases