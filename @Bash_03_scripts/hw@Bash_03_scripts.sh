#!/bin/bash


echo "Creating folder"
mkdir Name_Surname
ls
echo "Creating files"
touch Name
touch Surname
ls -d */ | cut -f1 -d'/'


: '
./script.sh
Creating folder
mkdir: cannot create directory ‘Name_Surname’: File exists
Name  Name_Surname  script.sh  Surname
Creating files
Name_Surname
'
