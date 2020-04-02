#!/usr/bin/env bash

while getopts 'cp' opt
do
  case ${opt} in
  c) commit=${OPTARG};;
  p) push=${OPTARG};;
  *) echo ${opt}' is not an option';;
  esac
done

if [[ ${option} == 'commit' ]]; then
  git pull; git add .; git commit -m 'update';
elif [[ ${option} == 'push' ]]; then
  git push origin master;
else
  git pull; git add .; git commit -m 'update'; git push origin master;
fi