#!/usr/bin/env bash
branchName= "none"
branchName= $(git log -1 --pretty=%B)
echo $branchName
PRTag=$(echo $branchName | cut -d '[' -f2 | cut -d ']' -f1)
echo $PRTag
echo "~Prueba Falsa~"
branchName="[Test]UnaRama"
echo $branchName
PRTag=$(echo $branchName | cut -d '[' -f2 | cut -d ']' -f1)
echo $PRTag