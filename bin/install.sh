#!/bin/bash

DEST="$( pwd )/.git/hooks/"
SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../hooks/" && pwd )/"

if [ -d "$DEST" ]; then
  if [ -d "$SRC" ]; then
    cp "${SRC}"* $DEST
    echo "Installed Git hooks (copied to .git/hooks directory)"
  else
    echo "unable to find hooks directory"
  fi
else
  echo "unable to find .git directory"
fi
