#!/bin/bash
# Bash_14_Positional_Arguments
: '
1. create a script that does the following:
accepts any number of arguments
prints all arguments in the following format "Arg1: <arg1 value>", "Arg2: <arg2 value>"
adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)
2. run the script with 7 1 5 7 4 3 6 arguments
'


# Code starts here
for arg in $@
  do
    let i=($i + 1)
    echo -e "\nArg$i: $arg"
done

arguments=()
for argument in $@; do
    arguments+=("$argument")
done

sums=()
counter=0
let counter_max=($# - 1)
while [ $counter -lt $counter_max ]
  do
    let counter1=($counter + 1)
    sum=$(expr ${arguments[$counter]} + ${arguments[$counter1]})
    sums+=("$sum")
    ((counter++))
done

let last=(${!#} + $1)
sums+=($last)

echo -e "\n${sums[@]}"
# Code ends here


# Executing the code
: '
./my_script.sh 7 1 5 7 4 3 6

Arg1: 7

Arg2: 1

Arg3: 5

Arg4: 7

Arg5: 4

Arg6: 3

Arg7: 6

8 6 12 11 7 9 13
'
