#!/usr/bin/env bash

echo $GITHUB_PR_TITLE

PRTag=$(echo $GITHUB_PR_TITLE | cut -d '[' -f2 | cut -d ']' -f1)
echo $PRTag

if [ "$PRTag" = "No Promote" ] ||
  [ "$PRTag" = "no promote" ] ||
  [ "$PRTag" = "no Promote" ] ||
  [ "$PRTag" = "No promote"  ]; then
  echo "No promote"
fi

