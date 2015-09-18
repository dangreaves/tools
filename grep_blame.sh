#!/usr/bin/env bash

if [ -z $1 ]
then
    echo 'Pleae provide a string to search for'
else
    for i in `find . -type f`; do
        BLAME=`git --no-pager blame $i | grep -i $1`

        if [ ! -z "$BLAME" ]; then
            echo $i
            echo -e "$BLAME"
            echo '----------'
        fi
    done
fi
