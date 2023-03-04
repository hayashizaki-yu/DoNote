#!/bin/bash

echo "Hello Hacker!"
echo "Time Stamp: `date`"
echo "Note URL: `git config --get remote.origin.url`"
/home/DoNote/.tools/update.sh "login.sh $(date)"
while true; do /home/DoNote/.tools/save.sh "Autosave $(date) $(echo $(du -sm .git/objects) | sed -e 's/ .*//g')MB/10000MB"; sleep 300; done &
