#!/bin/bash
: 'create a script file in your home directory that does the following:
checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation
- run your script with "hi world 7 9" arguments
- add TEST environment variable with "123" value
- re-run the script with "hello hello 10 7" arguments
'


# Code starts here
[ $1 == $2 ]; echo $?
[ ${#1} -gt ${#2} ]; echo $?
[[ -v $TEST ]]; echo $?
[ $3 != $4 ]; echo $?
[ $3 -ge $4 ]; echo $?
# Code ends here


# Executing the code
: '
./my_script.sh hi world 7 9
1
1
1
0
1

export TEST=123
env | grep TEST
TEST=123

./my_script.sh hello hello 10 7
0
1
1
0
0
'
