#!/bin/bash

# count=5

# while [ $count -gt 0 ]
# do
# echo "Processing $count ..."
# sleep 1 
# count=$((count-1))
# done
# echo "Times Up!!...."


while IFS= read -r filepath
do
echo "$filepath"
done > 21-script-1.sh