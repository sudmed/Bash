#!/bin/bash
# Bash_13_Until_Loop
: '
1. create a script that does the following:
  reads a filename from user input
  combines specifyed file with itself until it reaches a size greater than 1024 KB
2. create a file using head -c 4KB /dev/urandom > file.txt command
3. execute your script passing the file you've just created.
'


# Code starts here
user_filename=file.txt
filesize=$(du -k "$user_filename" | cut -f1)

until [[ $filesize -gt 1024 ]]; do
    cat $user_filename $user_filename > ./temp.txt
    cat temp.txt > $user_filename
    rm ./temp.txt
    filesize=$(du -k "$user_filename" | cut -f1)
    echo "Filesize: $filesize"
done
# Code ends here


# Executing the code
: '
head -c 4KB /dev/urandom > file.txt

./my_script.sh
Filesize: 8
Filesize: 16
Filesize: 32
Filesize: 64
Filesize: 128
Filesize: 252
Filesize: 500
Filesize: 1000
Filesize: 2000
'
