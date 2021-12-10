#!/usr/bin/env bash

noPromote=$(cat is-no-promote)
echo $noPromote
if [ $noPromote ]; then
  echo "$CIRCLE_REPOSITORY_URL"
  echo "$CIRCLE_PROJECT_REPONAME"
  echo "$CIRCLE_PROJECT_USERNAME"
  echo "$CIRCLE_BRANCH"
  baseUrl="  https://www.mergefreeze.com/api/branches/"
  finalURL= "$baseUrl$CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME/$CIRCLE_BRANCH/?access_token=[Access token]"
  echo "Freeze the merge"
  echo "$finalURL"

  staticUsername="Medology"
  staticReponame="stdcheck.com"
  staticBranchname="master"
  staticURL= "$baseUrl$staticUsername/$staticReponame/$staticBranchname/?access_token=[Access token]"
  echo "$staticURL"

  curl --data "frozen=true & user_name=circleci $finalURL"
fi