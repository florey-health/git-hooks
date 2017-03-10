#!/bin/bash

DEST="$( pwd )/.git/hooks/"
SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"

if [ -d "$DEST" ]; then
  if [ -d "$SRC" ]; then
    cp "${SRC}"* $DEST
    echo "copied hooks to .git directory"
  else
    echo "unable to find hooks directory"
  fi
else
  echo "unable to find .git directory"
fi
