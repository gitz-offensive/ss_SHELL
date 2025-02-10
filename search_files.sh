#!/bin/bash

# SCRIPT TO SEARCH FOR SPECIFIC FILE NAME

echo -e "Enter file name to search for:  "
read file_name
echo -e "Updating your search database......\n"
sudo updatedb
sleep 7
echo -e "Searching for $file_name .......\n"
find $HOME -type f -iname "$file_name" > search_results.txt
echo "Results stored in file name 'search_results.txt'
