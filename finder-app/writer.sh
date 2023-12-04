#!/usr/bin/env bash

if (( $# < 2 )); then
	  #echo "Missing arguments! Exiting..."
	  exit 1
fi
declare -r writefile=$1
declare -r writestr=$2
declare directory="$(dirname "${writefile}")"
mkdir -p $directory
touch $writefile
if [ ! -e $writefile ]; then
	#echo "File could not be created! Exiting..."
	exit 1
fi
echo $writestr > $writefile
exit 0
