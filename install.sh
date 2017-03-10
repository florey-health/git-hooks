#!/bin/bash

DEST="../.git/hooks"

if [ -d "$DEST" ]; then
  cp * $DEST
  echo "copied hooks to .git directory"
else
  echo "unable to find .git directory"
fi
