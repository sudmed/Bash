#!/bin/bash
# Homework@11_For_Loop
: '
1. create a script that does the following:
accepts any number of int arguments
outputs the sum of all arguments
outputs the number of arguments
outputs the average of all arguments
2. execute your script with the following arguments 1 2 3 4 5
Self-check: your script outputs the following:
Sum: 15
Args number: 5
Result: 3
'

# Code starts here
array=$@
if [[ -n "$1" ]] && [[ -n "$2" ]]; then
	for i in "${array[@]}"; do
  	case $i in
  		*[a-zA-Z]* ) echo "Enter integers only" ;;
			*[0-9] )
					for i do sum=$(expr $sum + $i); done; echo "SUM: $sum"
					echo "Args number: $#"
					echo "Result:" $(expr $sum / $#)
				;;
    	*) echo "Enter integers only" ;;
  	esac
	done
else
	 echo "Enter two or more integers as arguments"
fi
# Code ends here


# Executing the code
: '
./my_service.sh
Enter two or more integers as arguments
./my_service.sh 1
Enter two or more integers as arguments
./my_service.sh 1 2w
Enter integers only
./my_service.sh 1 2
SUM: 3
Args number: 2
Result: 1
./my_service.sh 1 2 3 4 5
SUM: 15
Args number: 5
Result: 3
'
