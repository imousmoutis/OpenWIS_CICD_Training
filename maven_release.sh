#!/bin/bash

git checkout master
./mvnw --batch-mode release:prepare

git fetch --all
git checkout -b develop origin/develop
git merge --no-edit --no-ff master
git push -u origin develop