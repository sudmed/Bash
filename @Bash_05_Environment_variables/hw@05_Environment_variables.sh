#! /bin/bash
echo $SURNAME


: '
SURNAME="Surname"
export SURNAME
env | grep SURNAME
echo 'export HOMEWORK=/mnt/c/Users/admin/yany/homework' >> ~/.bashrc
echo 'export PATH=$PATH:$HOMEWORK' >> ~/.bashrc
source ~/.bashrc
echo $PATH | grep homework
my_script.sh
'
