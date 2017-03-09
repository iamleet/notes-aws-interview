#!/bin/bash
# Loop through home directories and check who went to www.google.com and spit back the results into a query file

var_filetype="*"
var_directory="/home/"

cd $var_directory

for i in $var_filetype
        do
         cd $i
         echo "$i at `pwd` contains the following:" >> query_results.txt

         cat .bash_history | grep www.google.com >> query_results.txt
         echo -e "$i's bash_history was inserted into query_results.txt"
         cd ../
done
