#!/usr/bin/env sh

echo "Switching default shell."

user_shell=$(getent passwd $USER | cut -d : -f 7)

if [ $user_shell = "/bin/zsh" ]; then
  echo "Default shell already set to zsh."
else
  chsh -s $(which zsh)
  sudo chsh -s $(which zsh)
fi
