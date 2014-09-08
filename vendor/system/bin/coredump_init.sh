#!/system/bin/sh

# As many script command is not supported in ash, we will mainly use while loop and case switch.

COREDUMP_FLAG=$(getprop ro.coredump_server)
while
do
	case $COREDUMP_FLAG in
		true) break
	esac
	# If ro.coredump_server is not set or the value is false, then exit shell
	exit
done

# sleep 20s to make sure system_server have been started
sleep 20

# Any PID of userspace process should start from 1000.
# Generally, the system_server process PID should be from 1800 to 2000.
# For first time boot after reflash ROM, it is possible that the PID of system_server is over 2000.
# If the PID of system_server still could not be found until 3000 while device boot, system should have been abnormal.
# As coredump feature is only for debug, system_server is oneshot server, so not support the PID after system_server recover and not search the PID which is over 3000.
SEARCH_FIRST_PID_START=1800
SEARCH_FIRST_PID_END=2000
SEARCH_SECOND_PID_START=1500
SEARCH_SECOND_PID_END=3000
SEARCH_FIND_FLAG=0

PROCESS_NAME="null"
TARGET_NAME="system_server"
COREDUMP_ORG_PATH="/data/core"
COREDUMP_TMP_PATH=$COREDUMP_ORG_PATH"/dumpfor_"
COREDUMP_PATTERN_FOLD="/proc/sys/kernel/core_pattern"

# start first time search
var0=$SEARCH_FIRST_PID_START
while
do
	# read the process name from /proc/PID/comm
	CUR_PROCESS_PATH="/proc/"$var0"/comm"
	PROCESS_NAME=$(cat $CUR_PROCESS_PATH)

	case $PROCESS_NAME in
		$TARGET_NAME) break
	esac
	case $var0 in
		$SEARCH_FIRST_PID_END) break
	esac
	var0=$(($var0 + 1))
done

# if we did not find system_server, then sleep 20s and retry to search system_server process
while
do
	case $PROCESS_NAME in
		$TARGET_NAME) break
	esac

	# sleep 20s, then retry
	sleep 20
	var0=$SEARCH_SECOND_PID_START
	while
	do
		# read the process name from /proc/PID/comm
		CUR_PROCESS_PATH="/proc/"$var0"/comm"
		PROCESS_NAME=$(cat $CUR_PROCESS_PATH)

		case $PROCESS_NAME in
			$TARGET_NAME) break
		esac
		case $var0 in
			# did not find system_server, exit directly and use default /data/core fold.
			$SEARCH_SECOND_PID_END) exit 0
		esac
		var0=$(($var0 + 1))
	done
	break
done

# create the sub coredump fold
mkdir $COREDUMP_ORG_PATH
chmod 777 $COREDUMP_ORG_PATH
COREDUMP_PATH=$COREDUMP_TMP_PATH$var0
mkdir $COREDUMP_PATH
chmod 777 $COREDUMP_PATH

# the core file name pattern must include system_server main process pid number.
# send it to kernel side by fold name.
echo $COREDUMP_PATH"/%e.%p" > $COREDUMP_PATTERN_FOLD

exit 0

