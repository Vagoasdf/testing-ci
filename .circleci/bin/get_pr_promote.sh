#!/usr/bin/env bash

mkdir -p workspace
commitName=" $( git log -1 --pretty=%B) "
PRTag=$(echo "$commitName" | cut -d '[' -f2 | cut -d ']' -f1)

if [ "$PRTag" = "No Promote" ] ||
  [ "$PRTag" = "no promote" ] ||
  [ "$PRTag" = "NO PROMOTE" ] ||
  [ "$PRTag" = "No promote" ] ||
  [ "$PRTag" = "no Promote" ]; then

  echo True > workspace/is-no-promote
else
  echo False > workspace/is-no-promote
fi
