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


g-cd() {
  REPOSITORY_NAME=$1
  g-cd-host-user github.com simonfong6 $REPOSITORY_NAME
}

g-cd-host-user() {
  GIT_HOST=$1
  GITHUB_USER=$2
  REPOSITORY_NAME=$3
  REPO_ABSOLUTE_PATH="$HOME/git/$GIT_HOST/$GITHUB_USER/$REPOSITORY_NAME"

  if [ -d "$REPO_ABSOLUTE_PATH" ]; then
    echo "Repository $REPO_ABSOLUTE_PATH already cloned."
  else
    echo "Repository $REPO_ABSOLUTE_PATH does not exist, cloning..."
    SSH_URL="git@$GIT_HOST:$GITHUB_USER/$REPOSITORY_NAME.git"
    git clone $SSH_URL $REPO_ABSOLUTE_PATH
  fi

  cd $REPO_ABSOLUTE_PATH
}
