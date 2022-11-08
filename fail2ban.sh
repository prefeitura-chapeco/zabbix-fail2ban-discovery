#!/bin/bash

#execute command for get JAIL and remove special characters
command=`fail2ban-client get ${1} banned | tr -d "'" | tr -d "[]"`

#split a string based on the delimiter colon(,)
readarray -d "," -t strarr <<< "$command"

#print for values on new line
for (( n=0; n < ${#strarr[*]}; n++))
do
echo "${strarr[n]}"
done
