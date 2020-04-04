#!/usr/bin/env bash

branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
if [ "$2" ]; then
  branch=$2
fi

branch_check=$(git show-ref --quiet refs/heads/$branch; echo $?)
if [ $branch_check == 1 ]; then
  echo 'Nonexistent branch!'
  exit 1
fi

if [[ $1 == 'c' ]]; then
  git checkout $branch; git pull; git add . ; git commit -m 'update';
elif [[ $1 == 'p' ]]; then
  git push origin $branch;
else
  git pull; git add .; git commit -m 'update'; git push origin $branch;
fi