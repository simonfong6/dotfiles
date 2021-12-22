#!/usr/bin/env zsh

alias d='docker'
alias d-stop-containers='docker rm -f $(docker ps -a -q)'
alias d-image-purge='docker rmi $(docker image ls -q)'
