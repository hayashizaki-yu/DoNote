#!/bin/bash

function ask_yes_no {
  while true; do
    echo -n "$* [y/n]: "
    read ANS
    case $ANS in
      [Yy]*)
        return 0
        ;;
      [Nn]*)
        return 1
        ;;
      *)
        echo "Input 'y' or 'n'"
        ;;
    esac
  done
}
find /home/DoNote -type f -exec chmod 755 {} +
ssh-keygen -q -f "/root/.ssh/id_rsa" -t rsa -N "" <<< y > /dev/null 2>&1
echo "This is your ssh-key. Copy and Paste https://github.com/settings/ssh/new"
echo "--- COPY FROM HERE ---"
cat /root/.ssh/id_rsa.pub
echo "---  COPY TO HERE  ---"
if ask_yes_no "Finished?"; then
  git config --global --add safe.directory /home/DoNote
  echo -n "Enter your github username: "
  read USER_NAME
  git config --global user.name ${USER_NAME}
  echo -n "Enter your github email: "
  read USER_EMAIL
  git config --global user.email ${USER_EMAIL}
  echo -n "Enter repository url [SSH]: "
  read REMOTE_REPOSITORY_URL
  if ask_yes_no "Do you want to use repositories already in use?"; then
    git clone ${REMOTE_REPOSITORY_URL} /home/DoNote/
  else
    git init
    git remote add origin ${REMOTE_REPOSITORY_URL}
    /home/DoNote/.tools/save.sh "setup.sh $(date)"
  fi
  echo "Setup Completed!"
else
  echo "Setup Failed."
fi
