#!/usr/bin/env bash

current_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

if [[ $1 == 'c' ]]; then
  git pull; git add .; git commit -m 'update';
elif [[ $1 == 'p' ]]; then
  git push origin $current_branch;
else
  git pull; git add .; git commit -m 'update'; git push origin $current_branch;
fi