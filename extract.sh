#!/bin/bash

dotconfig="${HOME}/.config/"

exit_message() {
  local type
  type="${1}"
  echo
  case "${type}" in
  "directory_not_found")
    local directory
    directory="${2}"
    if [[ -n "${directory}" ]]; then
      echo -e "${directory} directory not found."
    else
      echo -e "Directory not found."
    fi
    ;;
  esac
  echo "Aborting due to above error... :("
  echo
  exit 1
}

dotfiles_directories=$(ls -d -- */)
if [[ -d "${dotconfig}" ]]; then
  for directory in ${dotfiles_directories}; do
    source="${directory}"
    destination="${dotconfig}${directory}"
    if [[ -d "${destination}" ]]; then
      cp -fRT "${source}" "${destination}"
    else
      exit_message "directory_not_found" "${destination}"
    fi
  done
  echo
  echo "Sucessfully replaced all directories in .config/"
  echo
fi
