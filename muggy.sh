#!/bin/bash

addData () {
    random=$((1 + RANDOM % 10))
    temp=""
    temp+="$random \n"
    for ((tempLoop=1; tempLoop<=random; tempLoop++))
    do 
        temp+="mug "
    done
    echo -e "$temp"
}


date --set="10 days ago"

git init

for ((i=1; i<=10; i++))
do
    addData >> mug.txt
    git add -all
    git commit -m "$date"
    date -s "+1 day"
    sleep 5
done
