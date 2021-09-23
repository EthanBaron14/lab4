#!/bin/bash
sudo apt-get install unzip
curl -fsSL https://deno.land/x/install/install.sh | sh
touch ~/.bash_profile
if [[ ":$PATH:" != *":$HOME/.deno:"* ]]; then
  echo "Adding to profile"
  echo 'export DENO_INSTALL="$HOME/.deno"' >>~/.bash_profile
  echo 'export PATH="$PATH:$DENO_INSTALL/bin"' >>~/.bash_profile
fi
DENO_INSTALL=$HOME/.deno
PATH=$PATH:$DENO_INSTALL/bin
