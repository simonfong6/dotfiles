#!/usr/bin/env zsh

ZSH_DIRECTORY="$HOME/dotfiles/shells/zsh"

create-zsh() {
  FILE_NAME=$1

  FILE_PATH="$ZSH_DIRECTORY/$FILE_NAME"

  touch $FILE_PATH
  chmod +x $FILE_PATH
  cat <<EOT > $FILE_PATH
#!/usr/bin/env zsh

command() {

}
EOT
  code $FILE_PATH
}
