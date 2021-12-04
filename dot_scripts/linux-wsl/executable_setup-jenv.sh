#!/usr/bin/env zsh

echo "Adding zulu11 to jenv."
jenv_java_version=$(zsh -c "jenv version")

if [[ $jenv_java_version =~ "11" ]]; then
  echo "jenv already set."
  return
else
  zsh -c "$HOME/.jenv/bin/jenv add '/usr/lib/jvm/zulu11'"

  echo "Setting global as 11 in jenv."
  zsh -c "jenv global 11"
fi
