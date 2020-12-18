#!/bin/bash

if [ $# -gt 0 ] ; then
	HOSTS=($*)
else
	HOSTS=()
	for i in {01..11} ; do
		HOSTS=(${HOSTS[@]} "dl$i")
	done
fi

echo "Hosts to test: ${HOSTS[@]}"

for host in ${HOSTS[@]} ; do
	RETURN=$(ping -c1 -W1 $host | grep "1 received")
	if [ "$RETURN" == "" ] ; then
		echo "no response from $host"
	else
		echo "$host is active"
	fi
done

exit 0
