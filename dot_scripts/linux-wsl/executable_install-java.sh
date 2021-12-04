#!/usr/bin/env zsh

jdk_version=zulu11-jdk
dpkg_check="$(dpkg -l | grep $jdk_version)"

if [ -z "$dpkg_check" ]; then
  sudo apt-key adv \
    --keyserver hkp://keyserver.ubuntu.com:80 \
    --recv-keys 0xB1998361219BD9C9

  curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-3_all.deb

  sudo apt-get install ./zulu-repo_1.0.0-3_all.deb
  rm ./zulu-repo_1.0.0-3_all.deb

  sudo apt-get update

  sudo apt-get install -y zulu11-jdk
else
  echo "$jdk_version already installed."
  return
fi
