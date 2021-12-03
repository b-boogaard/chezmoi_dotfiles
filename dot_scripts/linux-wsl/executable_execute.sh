#!/usr/bin/env sh

sh $(pwd)/linux-wsl/install-packages.sh \
 && sh $(pwd)/linux-wsl/setup-shell.sh \
 && sh $(pwd)/linux-wsl/setup-vim.sh \
 && sh $(pwd)/linux-wsl/install-java.sh \
 && sh $(pwd)/linux-wsl/setup-jenv.sh
