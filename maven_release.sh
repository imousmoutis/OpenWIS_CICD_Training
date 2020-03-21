#!/bin/bash

git checkout master
./mvnw --batch-mode release:prepare

git fetch --all
git checkout -b develop origin/develop
git merge --no-edit --no-ff master
git remote set-url origin git@github.com:imousmoutis/OpenWIS_CICD_Training.git
git push -u origin develop