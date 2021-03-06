#!/bin/bash

DEST="$( pwd )/.git/hooks/"

cd "$( dirname "${BASH_SOURCE[0]}" )"

if [ -d "../hooks" ]; then
  cd "../hooks/"
else
  echo "Error: unable to find hooks"
  exit
fi

echo $( pwd )
echo "${SRC}"

if [ -d "$DEST" ]; then
  cp * $DEST
  echo "Installed Git hooks (copied to .git/hooks directory)"
else
  echo "unable to find .git directory"
fi
