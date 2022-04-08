#!/bin/bash
# Bash_15_input_output
: '
1. create a script that does the following:
asks the user to input a filename
writes the following poem to the file specified by user:
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.

outputs the poem to the terminal
outputs the message "Task finished" to stderr
2. run your script, specify output as the file to write the poem to, redirect stdout to /dev/null, redirect stderr to stderr file
'


# Code starts here
echo "Input a filename: "
read -r user_filename
touch $user_filename
cat <<EOF > $user_filename
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
EOF
cat $user_filename
echo "Task finished" >&2
# Code ends here


# Executing the code
: '
./my_script.sh > /dev/null 2> stderr
output

cat output
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.

cat stderr
Task finished
'
