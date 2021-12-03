#!/usr/bin/env sh

sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9

curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-3_all.deb

sudo apt-get install ./zulu-repo_1.0.0-3_all.deb
rm ./zulu-repo_1.0.0-3_all.deb

sudo apt-get update

sudo apt-get install -y zulu11-jdk
