#!/usr/bin/env zsh

echo "Adding zulu11 to jenv."
jenv_java_version=$(jenv version)

if [[ $jenv_java_version =~ "11" ]]; then
  echo "jenv already set."
  return
else
  $HOME/.jenv/bin/jenv add "/usr/lib/jvm/zulu11"

  echo "Setting global as 11 in jenv."

  jenv global 11
fi
