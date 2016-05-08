#!/bin/dash
while true ; do
    radamsa hello -o xx
    catchsegv timeout 5 ./vulnerable xx
    X=$?
    if [ $X -ne 0 ] && [ $X -ne 124 ]; then
        break
    fi
done

