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

#!/bin/bash

# Create a file (or overwrite if it already exists)
echo "" > output.txt

# Loop 10 times and add "muggy" to the file
for i in {1..10}
do
  echo "muggy" >> output.txt
done
