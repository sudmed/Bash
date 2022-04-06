#!/bin/bash
: '
Create a script called odd_even.sh that does the following:
* takes one argument
* if the number of letters in the argument is odd, outputs the message "Odd", else if the number of letters is even - outputs "Even"
Run the script first with "odd" argument, then with "even" argument.
'


# Code starts here
if [ $(( ${#1} % 2 )) == 0 ]; then
   echo "Even"
else
   echo "Odd"
fi
# Code ends here


# Executing the code
: '
./odd_even.sh Odd
Odd
./odd_even.sh Even
Even
'
