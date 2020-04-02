#!/usr/bin/env bash

while getopts 'cp' opt
do
  case ${opt} in
  c) commit=${OPTARG};;
  p) push=${OPTARG};;
  *) echo ${opt}' is not an option';;
  esac
done

export cmd=`git pull; git add .; git commit -m 'update'; git push origin master;`
if [[ ${option} == 'commit' ]]; then
  cmd = `git pull; git add .; git commit -m 'update';`
elif [[ ${option} == 'push' ]]; then
  cmd = `git push origin master;`
fi

echo $cmd