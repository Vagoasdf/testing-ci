#!/usr/bin/env bash

noPromote=$(cat workspace/is-no-promote)
echo $noPromote
if [ $noPromote ]; then
  echo "Freeze the merge"
fi