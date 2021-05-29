#!/usr/bin/env zsh

# https://unix.stackexchange.com/questions/76505/portable-way-to-get-scripts-absolute-path
DIRECTORY_OF_THIS_FILE=${0:a:h}

# Load all files that end in .zsh in this directory.
for file in $DIRECTORY_OF_THIS_FILE/*.zsh; do
  if [[ "$DOTFILE_IMPORTS_QUIET" != "true" ]]; then
    echo "Loading $file...";
  fi
  source $file
done
