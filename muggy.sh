#!/bin/bash

myday () {
    neofetch
}

# myday

for ((i=1; i<=10; i++))
do
    echo "Current date: "
    date
    sleep 1
done


# random
echo $((1 + $RANDOM % 10))