#!/usr/bin/env bash

git fetch;
git checkout master && git pull;

tag=`date +"v%y%m%d.%H%M"`
echo "Tag is $tag";
before_name=`git log -1 --pretty=%B | head -n 1`
echo $before_name;

git tag -a $tag -m "before $before_name";
git push origin $tag;