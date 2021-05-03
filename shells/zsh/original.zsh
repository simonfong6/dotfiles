#!/usr/bin/env zsh

# Added manually for mothakes.com
alias mothakes="ssh -i \"/Users/simon/Projects/aws-pems/website.pem\" ubuntu@mothakes.com"

# Alias for pycodestyle, used for following PEP8
alias pcs="pycodestyle"

# Docker aliases
alias dcontainer="docker container"

alias dimage="docker image"

# MAE 144 Beagle Bone Blue when USB
alias beagle="ssh simonfong6@192.168.6.2"

# CSE 100
alias ucsd="ssh scf001@ieng6-245.ucsd.edu"

# Chrome Command
alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"

# Working Directories
alias 276a="cd /Users/simon/Projects/ucsd/ece-276a"
alias 285="cd /Users/simon/Projects/ucsd/ece-285"

alias template-python="wget https://raw.githubusercontent.com/simonfong6/template/master/python/template.py"
alias template-python-test="wget https://raw.githubusercontent.com/simonfong6/template/master/python/test_template.py"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Merge PDF
alias merge="python3 ~/Projects/ucsd/ece-273/tools/merge.py"

# Default Editor for Rails
export EDITOR="code --wait"

# List Proceses Listening on a Port.
alias ls-port="lsof -nP -iTCP -sTCP:LISTEN | grep"

# Node Version Manager.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Docker Compose
alias dev="docker-compose -f docker-compose.base.yml -f docker-compose.dev-common.yml -f docker-compose.development.yml -p ${PWD##*/}_dev"

alias app-test="docker-compose -f docker-compose.base.yml -f docker-compose.dev-common.yml -f docker-compose.test.yml"

alias app-test-run="docker-compose -f docker-compose.base.yml -f docker-compose.dev-common.yml -f docker-compose.test.yml -p ${PWD##*/}_test up \
    --abort-on-container-exit\
    --exit-code-from api"

alias prod="docker-compose -f docker-compose.base.yml -f docker-compose.production.yml -p ${PWD##*/}_prod"

# Edit Config
alias settings="code ~/.zshrc"
alias settings-reset="source ~/.zshrc"

# MongoDB
export MONGO_HOST="mongo"
export MONGO_USERNAME="root"
export MONGO_PASSWORD="example"

# Docker
function terminal() {
    CONTAINER=$1
    docker exec -it $CONTAINER bash
}

# UCSD
alias 225a="cd /Users/simon/Projects/ucsd/ece-225a"
alias 271a="cd /Users/simon/Projects/ucsd/ece-271a"

# Jupyter
alias notebook="jupyter notebook"
