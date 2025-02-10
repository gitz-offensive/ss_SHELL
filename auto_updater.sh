#!/bin/bash

echo '<------ WELCOME TO THE UPDATER SCRIPT! ------>'
echo -e '		author: Gitau\n' 
printf "getting updates now............\n\n"
sudo apt-get update
sleep 60
sudo apt list --upgradable > upgrade_list.txt
sleep 7
echo 'list of upgrabale app is in upgrdable_list.txt file'
sleep 7
echo 'doing the upgrade now........'
sleep 3
sudo apt-get upgrade -y
