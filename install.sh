#!/usr/bin/env sh

sudo apt update \
  && apt install -y git \

  sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply https://github.com/b-boogaard/chezmoi_dotfiles.git
