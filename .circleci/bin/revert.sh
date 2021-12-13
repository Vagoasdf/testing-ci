## This is gonna be hard.

## 1. Stop the current Gcloud Version, "DONT DELETE IT"

## Revert the previous merge
git revert HEAD -m1 ##  M1  = Continue on main branch
## DO NOT TRIGGER ANOTHER CircleCI Pipeline.
git commit -m"[ci skip] Reverting the  No Promote Merge" --allow-empty
## Push the unmerged head to  master branch
git push --set-upstream origin "$CIRCLE_BRANCH"

#### Edge Case >> If a bot pushes something on top.