#!/bin/bash
# Loop through directories for certain types of files and do things.

var_filetype="*"
var_directory="/home/"

cd $var_directory
echo `pwd`
for i in $var_filetype
        do
         echo $i
         cd $i
         echo -e "$i's bash_history was inserted into query_results.txt"
         cd ../
done
