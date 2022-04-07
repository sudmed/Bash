#!/bin/bash
# hw@Bash_10_pipelines_logical_operators
: '
1. Write a one line command using || and && operators that does the following: 
creates a folder named Name_Surname 
  if folder creation was successful, creates a file inside, called my_file
  if file creation was successfull, writes "Hello" into the file
  if previous operation was successful, lists the contents of the file
  if any of the operations fail, print "Something went wrong"
Run the command two times
2. write a command that outputs only users that have /usr/bin/false shell from /etc/passwd file and changes the shell to /bin/bash
'


# Code starts here
# First command one-liner
mkdir ./Name_Surname \
   && touch ./Name_Surname/my_file \
   && echo "Hello" > ./Name_Surname/my_file \
   && cat ./Name_Surname/my_file \
   || echo "Something went wrong"

# Second command
cat /etc/passwd | grep "/usr/bin/false" | sed 's!/usr/bin/false!/bin/bash!'
# Code ends here


# Executing the script
: '
# First command
# First run
./script.sh
Hello
# Second run
./script.sh
mkdir: cannot create directory ‘./Name_Surname’: File exists
Something went wrong

# Second command
cat /etc/passwd | grep "/usr/bin/false" | sed 's!/usr/bin/false!/bin/bash!'
daemoon:*:1:1:System Services:/var/root:/bin/bash
noboody:*:-2:-2:Unprivileged User:/var/empty:/bin/bash
'
