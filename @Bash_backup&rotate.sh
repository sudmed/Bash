#!/bin/bash
#
# This script generates files, creates an archive from them, 
# copies it to a remote server and finally deletes all archives 
# older than 7 days.
#
# To make the script readable and executable, run the command 
# in the console: chmod a+rx script.sh
#
# To run the script as a cronjob at 3:00 every night, run: 
# crontab -l | { cat; echo "0 03 * * * /home/user/script.sh"; } | crontab -
# 	'crontab -l' lists the current crontab jobs,
#	'cat' prints it, 
#	'echo' prints our new cronjob,
#	'crontab -' adds them all back into the crontab file
#
# Written by Dmitriy Pashkov for `DevOpsSchool`, 07.05.2022
#

# protecting script from common errors
set -e

# setting vars
file_dir="files"
backup_dir="backup"
backup_file="backup_$(date +%Y%m%d_%H-%M).tar.gz"  
# archive name includes current date and time for uniqueness

# checking if files directory exists or not
if ! [ -d "$file_dir" ]
  then mkdir "$file_dir"
fi

# checking if backup directory exists or not
if ! [ -d "$backup_dir" ]
  then mkdir "$backup_dir"
fi

# going to files directory
cd "$file_dir"

# generating many files with random filename and random content
count=0
while [ $count -lt 1024 ]; do
  filename=$(cat "/dev/urandom" | tr -cd 'a-fA-Z0-9' \
    | head -c "$(shuf -i 10-20 -n 1)")
  base64 "/dev/urandom" | head -c 100K > "$filename"
  count=$(( "$count" + 1 ))
  echo -e "$count - $filename"
done

# archiving and compressing files
tar -cvzf "$backup_dir"/"$backup_file" "$file_dir"

# sending archive to remote server
rsync -avz $backup_file user@server_host:/home/user/backup/

# deleting archives older than 7 days on remote server
ssh user@server_host
find /home/user/backup -mtime +7 | xargs rm -f
exit
