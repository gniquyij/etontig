#!/usr/bin/env bash

if [[ $0 == 'c' ]]; then
  git pull; git add .; git commit -m 'update';
elif [[ $0 == 'p' ]]; then
  git push origin master;
else
  git pull; git add .; git commit -m 'update'; git push origin master;
fi