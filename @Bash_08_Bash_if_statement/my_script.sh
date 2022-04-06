#!/bin/bash
: '
Create a script called my_script.sh that does the following:
* takes any number of arguments
* if there are less than 2 arguments, output the values of these arguments
* if there are more than 2 but less than 4 arguments, output only the last argument
* else output "Invalid number of arguments" message
Run my_script.sh with the following arguments:
* hello
* hello world
* pie is lie
* keep calm and procrastinate
'


# Code starts here
if [[ "$#" -lt 2 ]]; then
  echo "$1"
elif [[ "$#" -gt 2 && "$#" -lt 4 ]]; then
  echo "${!#}"
else
  echo "Invalid number of arguments"
fi
# Code ends here


# Executing the code
: '
./my_script.sh hello
hello
./my_script.sh hello world
Invalid number of arguments
./my_script.sh pie is lie
lie
./my_script.sh keep calm and procrastinate
Invalid number of arguments
'
