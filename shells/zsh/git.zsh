#!/usr/bin/env zsh

parse-git-branch(){
  # refs/heads/$BRANCH_NAME
  REF_NAME=$(git symbolic-ref HEAD 2> /dev/null)

  echo $REF_NAME | sed -n -e 's|^refs/heads/||p'
}

g-crb() {
  BRANCH=$(parse-git-branch)

  git push --set-upstream origin $BRANCH
}
