#!/bin/bash
echo -e "waiting for mysql \c"
ELAPSED=0
until mysqladmin -h 127.0.0.1 -P3306 ping &> /dev/null
do
    if [ $ELAPSED -eq "60" ]; then
        echo " timeout"
        exit 1
    fi
    echo -e ".\c"
    sleep 1
    let ELAPSED++
done
echo " done"
exit 0
