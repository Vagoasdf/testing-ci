## This is gonna be hard.

## 1. Stop the current Gcloud Version, "DONT DELETE IT"

## Revert the previous merge
currentCommit="$(git rev-parse CIRCLE_BRANCH)"
git revert "$currentCommit" ## Check the merge stuf
## DO NOT TRIGGER ANOTHER CircleCI Pipeline.
git commit -m"[ci skip] Reverting the  No Promote Merge" --allow-empty
## Push the unmerged head to  master branch
git push
#### Edge Case >> If a bot pushes something on top.