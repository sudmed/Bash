#!/bin/bash
# Bash_16_functions
: '
1. create a script that does the following:
has a function that multiplies the argument passed to it by itself
has a second function that passes each argument passed to the script to the first function and increases the result by 1 and outputs to the console
2. run your function with the following arguments: 5 6 1 3 9
'


# Code starts here
function_square () {
    arguments=()
    for argument in $@; do
      arguments+=("$argument")
    done

    products=()
    local COUNT=0
    local MAX=$#
    while [ $COUNT -lt $MAX ]
      do
      product=$(expr ${arguments[$COUNT]} \* ${arguments[$COUNT]})
      products+=("$product")
      ((COUNT++))
    done
    #echo ${products[@]}
}
function_square $*

function_addition () {
    additions=()
    local COUNT=0
    local MAX=$#
    while [ $COUNT -lt $MAX ]
      do
      addition=$(expr ${products[$COUNT]} + 1)
      additions+=("$addition")
      echo -e "\n$addition"
      ((COUNT++))
    done
    ##echo ${additions[@]}
}
function_addition "${products[@]}"
# Code ends here


# Executing the code
: '
./my_script.sh 5 6 1 3 9

26
  
37
  
2 
  
10

82
'
