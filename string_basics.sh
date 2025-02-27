#!/bin/bash

# Declare strings

str1="Bash"
str2="Scripting"
str3="Hello, Strings!"

# Print strings
echo "$str1 $str2" # Double Quotes (" "): Allow variable interpolation, meaning variables inside the quotes will be replaced
echo '$str1 $str2' # Single Quotes (' '): Treat everything literally, meaning variables inside will not be expanded.
echo "$str3"

# String length

echo "length of '$str3': ${#str3}"

# Substring Extraction

substr="${str3:7:7}" #Extract from index 6 (length 7)
echo "Substring: $substr"
echo "Fist 5 letters: ${str3:0:5}" #${str:start:length} extracts a substring from start index of specified length.
echo "omitting length: ${str3:6}" #Omitting length extracts everything from start to the end.

# String Substitution

str="Bash is fun. Bash is powerful"

echo "${str/Bash/Shell}"  # Replace first occurrence
echo "${str//Bash/Shell}" # Replace all occurrences
echo "${str%. *}" # Remove suffix

# Trimming Whitespace


str="   Trim this string   "

# Method 1: Parameter expansion
shopt -s extglob
trimmed="${str##*( )}"
trimmed="${trimmed%%*( )}"
echo "Trimmed: '$trimmed'"

# Method 2: Using sed
trimmed_sed=$(echo "$str" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
echo "Trimmed with sed: '$trimmed_sed'"

# Case Conversion

str="Bash Scripting"

echo "${str^^}"  # Uppercase
echo "${str,,}"  # Lowercase
echo "${str^}"   # Capitalize first letter

# Splitting Strings into Arrays



csv="apple,banana,grape"
IFS=',' read -ra fruits <<< "$csv"

echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"


# Checking Substrings and Empty Strings


str="Linux is awesome"

if [[ "$str" == *"is"* ]]; then
  echo "Substring found!"
fi

empty_str=""
if [[ -z "$empty_str" ]]; then
  echo "String is empty"
fi



