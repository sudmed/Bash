#!/bin/bash
[ $1 == $2 ]; echo $?
[ ${#1} -gt ${#2} ]; echo $?
[[ -n $TEST ]]; echo $?
[ $3 != $4 ]; echo $?
[ $3 -ge $4 ]; echo $?
