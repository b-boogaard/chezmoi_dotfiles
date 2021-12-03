#!/usr/bin/env sh

echo "Installing vim plugins\n"

sleep 1s

vim -c "PlugInstall" -c "quit" -c "quit"
