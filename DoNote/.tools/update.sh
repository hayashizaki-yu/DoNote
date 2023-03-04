#!/bin/bash

git pull origin master > /dev/null 2>&1
if [ "${1}" = "" ]; then
  echo 'No message : Note Updated!' >> /home/DoNote/DoNote.log
else
  echo -n ${1} >> /home/DoNote/DoNote.log
  echo ' : Note Updated!' >> /home/DoNote/DoNote.log
fi
