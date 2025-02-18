#!/bin/bash

addData () {
    random=$((1 + RANDOM % 10))
    temp=""
    temp+="$random \n"
    for ((i=1; i<=random; i++))
    do 
        temp+="mug "
    done
    return "$temp";
}

for ((i=1; i<=10; i++))
do
    echo "$addData" >> mug.txt
    sleep 5
done