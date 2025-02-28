#!/bin/bash

# Iterate over a list of fruits
for fruit in Apple Banana Orange; do
    echo "Processing $fruit..."
done


# Iterate Over Array

# Define an array
names=("Nabil" "Minhaz" "Fazlul" "Yasin")

# Loop through the array
for name in "${names[@]}"; do
    echo "Hello, $name!"
done

    echo "Loop completed."

# while Loops

count=5

while [ $count -gt 0 ]; do
    echo "Countdown: $count"
  sleep 1
  ((count--))
done

    echo "Liftoff! 🚀" #This script will count down from 5 to 1 and then print "Liftoff! 🚀".


# until Loops

file="important.log"

# Wait until the file is created
until [ -f "$file" ]; do
    echo "Waiting for $file..."
  sleep 2
done

    echo "$file found! Proceeding..."




# Loop Control Statements with break

for num in {1..10}; do
  if [ $num -eq 5 ]; then
    break
  fi
    echo "Number: $num"
done


# Loop Control Statements with continue

for num in {1..5}; do
  if [ $num -eq 3 ]; then
    continue
  fi
    echo "Number: $num"
done


# Accidental Infinite Loop

count=1

while [ $count -le 5 ]; do
  echo "Iteration: $count"
done



# Intentional Infinite Loop with Controlled Exit

# Run until the user types "exit"
while true; do
  read -p "Enter a command (type 'exit' to quit): " cmd
  if [ "$cmd" = "exit" ]; then
    break
  else
    echo "Executing: $cmd"
  fi
done


