#!/bin/bash

if [ $# -gt 0 ] ; then
	DIR=$*
else
	DIR="."
fi

WC=$(ls | wc -l)

echo $WC

exit 0
