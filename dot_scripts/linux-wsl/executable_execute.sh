#!/usr/bin/env sh
sh $(pwd)/linux-wsl/install-packages.sh \
 && sh $(pwd)/linux-wsl/setup-shell.sh \
 && sh $(pwd)/linux-wsl/setup-vim.sh
