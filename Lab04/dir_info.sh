#!/bin/bash

# initialize counter
count=0;

# go through the directory listing, including hidden files
for name in * .*
do
    if [[ ! -d $name ]]
    then
        #this is  not a directory so count it
        count=$(($count+1))
    fi
done

#count the number of files now
echo $count 

#find and list the number of directories 
find . -mindepth 1 -maxdepth 1 -type d -printf . | wc -c

#Find the biggest file 
find . -type f | xargs ls -lS | head -n 1

#List most recently modified file
ls -al --time-style=+%D | grep 'date +%D'

#List permissions of directory owners 
ls -lhR /home/aetienne/04-introduction-to-linux-os-aetienne93/


