#!/usr/local/bin/dash

# Source: http://www.usenix.org.uk/code/yahoo_mbox/script

# 20140512 (ed@s5h.net)
# this script helps get mail back from the clutches of yahoo.
# do whatever you want with it
# remove/comment sleep out if you wish, i've found i've hit
# limits of 2500 messages before getting blocked.

usage() {
	echo "usage: $0 -s 1 -e N -g groupname"
	exit;
}

while getopts "s:e:g:" o; do
	case "${o}" in
        	s)
			MIN=${OPTARG}
			;;
		e)
			MAX=${OPTARG}
			;;
		g)
			GROUP=${OPTARG}
			;;
		*)
			echo $OPTARG
			;;
	esac
done
shift $((OPTIND-1))

if [ -z "${MIN}" ] || [ -z "${MAX}" ] || [ -z "${GROUP}" ]; then
    usage
fi

echo Getting messages $MIN to $MAX from $GROUP ...

for i in $( seq $MIN $MAX ) ; do
	curl -4 https://groups.yahoo.com/api/v1/groups/${GROUP}/messages/$i/raw \
	> raw/message_$i ;
	sleep 1;
done ;
