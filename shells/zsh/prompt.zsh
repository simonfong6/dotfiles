#!/usr/bin/env zsh

# Handles case where branch name has a `/` in it.
parse-git-branch(){
  # refs/heads/$BRANCH_NAME
  REF_NAME=$(git symbolic-ref HEAD 2> /dev/null)

  echo $REF_NAME | sed -n -e 's|^refs/heads/||p'
}

# https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33
# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(parse-git-branch)
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%2/ $(git_branch_name) > '
