#!/bin/sh
# This file was automatically generated on Wed 26 Mar 2014 15:35:21 GMT from
# source: /home/rjq35657/R3.14.12.3/support/ethercat/etc/makeIocs/bench-3104.xml
# 
# *** Please do not edit this file: edit the source file instead. ***
# 
cd "$(dirname "$0")"
if [ -n "$1" ]; then
    export EPICS_CA_SERVER_PORT="$(($1))"
    export EPICS_CA_REPEATER_PORT="$(($1 + 1))"
    [ $EPICS_CA_SERVER_PORT -gt 0 ] || {
        echo "First argument '$1' should be a integer greater than 0"
        exit 1
    }
fi
exec ./bench-3104 stbench-3104.boot
