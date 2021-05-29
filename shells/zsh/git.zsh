#!/usr/bin/env zsh

parse-git-branch(){
  # refs/heads/$BRANCH_NAME
  REF_NAME=$(git symbolic-ref HEAD 2> /dev/null)

  # https://unix.stackexchange.com/questions/24140/return-only-the-portion-of-a-line-after-a-matching-pattern
  echo $REF_NAME | sed -n -e 's|^refs/heads/||p'
}

g-crb() {
  BRANCH=$(parse-git-branch)

  git push --set-upstream origin $BRANCH
}
