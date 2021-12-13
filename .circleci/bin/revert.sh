## This is gonna be hard.

## 1. Stop the current Gcloud Version, "DONT DELETE IT"

## Revert the previous merge
currentCommit="$(git rev-parse CIRCLE_BRANCH)"
git revert "$currentCommit"
git commit -m"[ci skip] Reverting the  No Promote Merge" --allow-empty
## DO NOT TRIGGER ANOTHER CircleCI Pipeline.
## add [ci skip] to the commit

## Push the unmerged head to  master branch


#### Edge Case >> If a bot pushes something on top.