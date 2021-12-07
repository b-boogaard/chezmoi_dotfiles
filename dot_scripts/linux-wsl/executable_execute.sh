#!/usr/bin/env sh

sh $(pwd)/linux-wsl/install-packages.sh \
 && zsh $(pwd)/linux-wsl/setup-shell.sh \
 && zsh $(pwd)/linux-wsl/setup-vim.sh \
 && zsh $(pwd)/linux-wsl/install-java.sh
