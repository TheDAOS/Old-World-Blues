#!/bin/bash

myday () {
    neofetch
}

# myday

for ((i=1; i<=10; i++))
do
    random=$((1 + RANDOM % 10))
    # "loop $i" >> mug.txt
    date >> mug.txt
    echo "$random" >> mug.txt
    for ((i=1; i<=random; i++))
    do 
        echo "mug" >> mug.txt
    done
    date
    sleep 1
done


# random
echo $((1 + $RANDOM % 10))