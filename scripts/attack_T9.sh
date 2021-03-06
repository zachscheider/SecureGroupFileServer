#!/bin/bash

## useful vars
jar_name=bcprov-jdk15on-158.jar
thePath="cs1653-2017fa-jbd29-mar257-zds14"
attIn="../scripts/attInput"
myTerm="terminator"
passfile="../dlb/rockyou.txt"


if [[ $# > 1 ]]; then
  #statements
  passfile = $1;
fi

clientCmd="java -cp .:$jar_name RunClientApp"

cd src/
cd ../src/
echo "I'm in $PWD"
if [[ $PWD != *"$thePath"* ]]; then
  echo "In the wrong directory! Make sure the /src folder is in this directory."
  exit
fi


while read -r line; do
  #statements
  printf "../scripts/attInput" > "../scripts/T9_input";
  "$line" >> "../scripts/T9_input";
  $clientCmd < "../scripts/T9_input"
done < $passfile
