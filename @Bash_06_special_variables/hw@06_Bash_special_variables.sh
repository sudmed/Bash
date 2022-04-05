#! /bin/bash
: '
Create a script that does the following:
prints the name of the script
prints all arguments
prints the number of arguments passed to the script
prints 2nd and 4th argument
print the exit code of -eq operation on 1st and 2nd arguments (use [[]])
- execute your script like this: ./my_script.sh 1 2 hello world
- change the script arguments so that the result of the last operation (-eq) would be 0
- run the script again with new arguments
'


# Code starts here
echo $0
echo $*
echo $#
echo $2 $4
[[ $1 -eq $2 ]]
echo $?
# Code ends here


: '
# Executing the script
$./my_script.sh 1 2 hello world
./my_script.sh
1 2 hello world
4
2 world
1

$ ./my_script.sh 2 2 hello world
./my_script.sh
2 2 hello world
4
2 world
0
'
