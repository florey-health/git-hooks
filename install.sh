#!/bin/bash

SRC="./hooks/"
DEST="./.git/hooks/"

if [ -d "$DEST" ]; then
  if [ -d "$SRC" ]; then
    cp "${SRC}*" $DEST
    echo "copied hooks to .git directory"
  else
    echo "unable to find hooks directory"
  fi
else
  echo "unable to find .git directory"
fi
