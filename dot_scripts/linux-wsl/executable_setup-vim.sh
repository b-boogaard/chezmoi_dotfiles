#!/usr/bin/env zsh

echo "Installing vim plugins"
sleep 1s

if [ -d "$HOME/.vim/bundle" ]; then
  echo "Vim plugins already installed."
  return
else
  vim -c "PlugInstall" -c "quit" -c "quit"
fi
