#!/bin/bash

(
while read line
do
    if [[ "${line}" =~ ^\#HOSTGEN ]]; then
        break;
    fi
    echo "${line}"
done < /etc/hosts

echo "#HOSTGEN -- Below this line, this is automatically generated"

cat hostfile | grep -Ev '^\s*$'

) > hosts.tmp

if [ -n hosts.tmp ]; then
    cp hosts.tmp /etc/hosts
fi
