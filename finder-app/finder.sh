#!/usr/bin/env bash
if (( $# < 2 )); then
  echo "Not enough arguments provided. Exiting..."
  exit 1
fi
declare -r variable1=$1
declare -r variable2=$2
declare X=0
declare Y=0
if [ -d $variable1 ];
then
  X=$(grep -aRci $variable2 $variable1 | wc -l)
  for i in $(grep -aRci $variable2 $variable1 | grep -oP [0-9][0-9]); do
    ((Y+=i))
  done
  echo "The number of files are $X and the number of matching lines are $Y"
  exit 0
else
  echo "$variable1 is not a directory! Exiting..."
  exit 1
fi
