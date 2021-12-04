#!/usr/bin/env zsh

if [ -d "$HOME/.vim/bundle" ]; then
  echo "Vim plugins already installed."
else
  echo "Installing vim plugins. Quit after plugins finish installing."
  sleep 1s

  vim -c "PlugInstall"
fi
