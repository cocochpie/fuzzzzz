#!/bin/dash
while true ; do
    radamsa hello -o xx
    ./catchsegv-mod timeout 5 ./vulnerable xx
    #./catchsegv ./alwayscrash
    if [ $? -ne 0 ]; then
        break
    fi
done

