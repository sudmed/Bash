#!/bin/bash
# Bash_12_While_Loop
: '
Create console.sh script that does the following:
implements console functionality - infinite loop that reads user input on each iteration
supports commands:
ls [dir] - lists the contents of specified directory
pwd - shows the path to current directory
hi - outputs "Hello <name of the current user>" 
exit - ends the script
'


# Code starts here
echo "Enter a command [ls|pwd|hi|exit]: "
while :
  do
    read -r USR_INPUT
    case "$USR_INPUT" in
    exit)
      exit 0 ;;
    hi)
      echo "Hello $USER"
      continue ;;
    pwd)
      echo $(pwd)
      continue ;;
    "ls"*)
      echo $(${USR_INPUT#*=})
      continue ;;
    "")
      continue ;;
    *)
      echo "Error, please enter listed command only"
      continue ;;
  esac
done
# Code ends here


# Executing the code
: '
./console.sh
Enter a command [ls|pwd|hi|exit]: 
ls ~
console.sh

ls /
bin boot dev etc home init lib lib32 lib64 lost+found media mnt opt proc root run sbin snap srv sys tmp usr var

pwd 
/mnt/c/Users/admin/yany/homework

hi
Hello root1

123 
Error, please enter listed command only

qwerty
Error, please enter listed command only

exit
'
