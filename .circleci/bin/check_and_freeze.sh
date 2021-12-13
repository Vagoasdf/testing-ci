#!/usr/bin/env bash

noPromote=$(cat workspace/is-no-promote)

if [ "$noPromote" ]; then

  baseUrl="https://www.mergefreeze.com/api/branches/"
  ##Format: https://www.mergefreeze.com/api/branches/[Github account name]/[Github repository name]/[protected branch name]/?access_token=[Access token]

  finalURL="$baseUrl$CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME/$CIRCLE_BRANCH/?access_token=$GITHUB_TOKEN"

  echo "Merge Freeze in action"
  echo $finalURL
  curl --data "frozen=true & user_name=circleci" "$finalURL"
fi