#!/bin/bash
# Script to be run when commiting;  solves the problem with the nested
# repository.   It  takes  as  input the  directories  where  the  git
# repositories are located,  and a commit message, and  it moves .git/
# temporarily to _git/ to create the commit.

[[ "$#" != 2 ]] && exit 1
dir="$1"
msg="$2"

mv "$dir"/{.,_}git
git add "$dir"/_git
git commit -m "$msg"
mv "$dir/"{_,.}git

exit 0
