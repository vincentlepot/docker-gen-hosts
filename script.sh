#!/bin/bash

(
while read line
do
    echo "${line}"
    if [[ "${line}" =~ ^\#HOSTGEN ]]; then
        break;
    fi
done < /etc/hosts

cat hostfile | grep -Ev '^\s*$'

) > hosts.tmp

if [ -n hosts.tmp ]; then
    cp hosts.tmp /etc/hosts
fi
