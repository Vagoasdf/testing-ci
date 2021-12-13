#!/usr/bin/env bash

mkdir -p workspace
commitName=" $( git log -1 --pretty=%B) "
commitTitleTag=$(echo "$commitName" | cut -d '[' -f2 | cut -d ']' -f1)

if [ "$commitTitleTag" = "No Promote" ] ||
  [ "$commitTitleTag" = "no promote" ] ||
  [ "$commitTitleTag" = "NO PROMOTE" ] ||
  [ "$commitTitleTag" = "No promote" ] ||
  [ "$commitTitleTag" = "no Promote" ]; then

  echo true > workspace/is-no-promote
else
  echo false > workspace/is-no-promote
fi

