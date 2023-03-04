#!/bin/bash


git add . > /dev/null 2>&1
if [ "${1}" = "" ]; then
  git commit -m "No message" > /dev/null 2>&1
  git push origin master > /dev/null 2>&1
  echo 'No message : Note Saved!' >> /home/DoNote/DoNote.log
else
  git commit -m "${1}" > /dev/null 2>&1
  git push origin master > /dev/null 2>&1
  echo -n ${1} >> /home/DoNote/DoNote.log
  echo ' : Note Saved!' >> /home/DoNote/DoNote.log
fi
