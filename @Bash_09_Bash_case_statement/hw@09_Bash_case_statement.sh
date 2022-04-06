#!/bin/bash
# Homework@09_Bash_case_statement
: '
TASKS:
1. create a script called my_service.sh which does the following:
accepts start, stop, restart arguments:
start - outputs "Service started" message and sleeps for 9999
stop - gets the PID of my_service.sh process and terminates it, then outputs "Service stopped" message
restart - stops and then starts the service
any other argument outputs script usage information
2. add your service to PATH.
3. run your script with start and restart arguments in background.
4. run your script with stop and help arguments.

Self-check: script executions retrun the following:
start:
[1] 45043
Service is started
stop:
Service is stopped
[2]  + 44996 terminated  ./my_script.sh start
restart:
[1] 45863
Service is stopped
Service is started
help:
usage: my_service.sh [start|stop|restart]
'


# Code starts here
case $1 in
	start)
		echo "Service is started"
		sleep 9999
		;;
	stop)
		echo "Service is stopped"
		PID=($(ps aux | grep 'my_service.sh' | awk '{print $2}'))
		kill -15 "${PID[0]}"
		;;
	restart)
		echo "Service is stopped"
		PID=($(ps aux | grep 'my_service.sh start' | awk '{print $2}'))
		kill -15 "${PID[0]}"
		echo "Service is started"
		sleep 9999
		;;
	help)
		echo "usage: my_service.sh [start|stop|restart]"
		;;
	*)
		echo "usage: my_service.sh [start|stop|restart]"
		;;
esac
# Code ends here


# Executing the code
: '
export PATH=`pwd`:$PATH
./my_service.sh start &
[1] 144
Service is started

jobs -l
[1]+   144 Running                 ./my_service.sh start &

./my_service.sh stop
Service is stopped
[1]+  Terminated              ./my_service.sh start

./my_service.sh start &
[1] 151
Service is started

./my_service.sh restart &
[2] 153
Service is stopped
Service is started
[1]-  Terminated              ./my_service.sh start

jobs -l
[2]+   153 Running                 ./my_service.sh restart &

./my_service.sh help
usage: my_service.sh [start|stop|restart]
'
