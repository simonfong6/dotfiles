#!/usr/bin/env zsh

ZSH_DIRECTORY="$HOME/dotfiles/shells/zsh"
EXTENSION="zsh"

dotfile-zsh() {
  COMMAND=$1

  FILE_NAME="$COMMAND.$EXTENSION"
  FILE_PATH="$ZSH_DIRECTORY/$FILE_NAME"

  touch $FILE_PATH
  chmod +x $FILE_PATH
  cat <<EOT > $FILE_PATH
#!/usr/bin/env zsh

$COMMAND() {

}
EOT
  code $FILE_PATH
}
