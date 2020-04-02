#!/usr/bin/env bash

if [[ $1 == 'c' ]]; then
  git pull; git add .; git commit -m 'update';
elif [[ $1 == 'p' ]]; then
  git push origin master;
else
  git pull; git add .; git commit -m 'update'; git push origin master;
fi