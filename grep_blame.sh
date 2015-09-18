#!/usr/bin/env bash

for i in `find .`; do
    BLAME=`git --no-pager blame $i 2>/dev/null | grep -i $1`

    if [ ! -z "$BLAME" ]; then
        echo $i
        echo $BLAME
        echo '----------'
    fi
done
