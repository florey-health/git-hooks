#!/bin/bash

# ensure that we are not in production mode (being install as a sub module)
if [ "$NODE_ENV" = "production" ]; then
    exit # we are in production mode, do not install git-hooks
fi

DEST="$( pwd )/.git/hooks/"

if [ -d "$PWD/node_modules/git-hooks/hooks" ]; then
  cd "./node_modules/git-hooks/hooks"
else
  echo "Error: unable to find hooks"
  exit
fi

if [ -d "$DEST" ]; then
  cp * $DEST
  echo "Installed Git hooks (copied to .git/hooks directory)"
else
  echo "Unable to find .git directory"
fi
