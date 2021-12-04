#!/usr/bin/env zsh

user_shell=$(getent passwd $USER | cut -d : -f 7)

if [ $user_shell = "/bin/zsh" ]; then
  echo "Default shell already set to zsh."
else
  echo "Switching default shell to zsh."
  sleep 2s

  chsh -s $(which zsh)
  sudo chsh -s $(which zsh)
fi

source $HOME/.zshrc
