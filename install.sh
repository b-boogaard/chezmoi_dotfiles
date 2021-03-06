#!/usr/bin/env sh

sudo apt -qq install -y git \
  && sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply https://github.com/b-boogaard/chezmoi_dotfiles.git
