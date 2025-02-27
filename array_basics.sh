#!/bin/bash
#Declare an array of fruits

fruits=( "apple" "orange" "graphs" "banana")

#Print all elements
echo "List of Fruits: ${fruits[@]}"

#Declare an array with Space/newlines

books=("1984" "Brave new world" "Fahrenheit 451")


for newlines in "${books[@]}"; do

echo "Name of book: $newlines"

done

#Access to an array elements
echo "First fruits: ${fruits[0]}"
echo "All the fruits: ${fruits[@]}"
echo "Indices: ${!fruits[@]}"
echo "Number of elements: ${#fruits[@]}"

#Modifying an array by adding and removing
#Adding Element

fruits+=("cherry" "lime")

echo "Modifying list of fruits: ${fruits[@]}"

#Update an element in array
fruits[2]="Parsimon"
echo "New list of fruits: ${fruits[@]}"


#remove an element from the array
unset fruits[3]
echo "After Deletion new list: ${fruits[@]}"

#Loop through arrays using for loops:


#!/bin/bash

teams=("Developers" "Designers" "QA" "DevOps")

# Loop with indices
for i in "${!teams[@]}"; do
  echo "Team $i: ${teams[$i]}"
done

# Loop through elements directly
for team in "${teams[@]}"; do
  echo "Processing $team..."
done


