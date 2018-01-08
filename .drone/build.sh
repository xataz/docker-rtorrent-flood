#!/bin/bash

## Variables
CSI="\033["
CEND="${CSI}0m"
CRED="${CSI}1;31m"
CGREEN="${CSI}1;32m"
CYELLOW="${CSI}1;33m"
CBLUE="${CSI}1;34m"


## Functions
f_log() {
    TYPE=$1
    MSG=$2

    if [ "${TYPE}" == "ERR" ]; then
        COLOR=${CRED}
    elif [ "${TYPE}" == "INF" ]; then
        COLOR=${CBLUE}
    elif [ "${TYPE}" == "WRN" ]; then
        COLOR=${CYELLOW}
    elif [ "${TYPE}" == "SUC" ]; then
        COLOR=${CGREEN}
    else
        COLOR=${CEND}
    fi

    echo -e "${COLOR}=${TYPE}= $TIMENOW : ${MSG}${CEND}"
}


# Build rtorrent-flood
f_log INF "Build xataz/rtorrent-flood:latest ..."
docker build -t xataz/rtorrent-flood:latest . > /tmp/build.log 2>&1
if [ $? -eq 0 ]; then
    f_log SUC "Build xataz/rtorrent-flood:latest successful"
else
    f_log ERR "Build xataz/rtorrent-flood:latest failed"
    cat /tmp/build.log
    exit 1
fi

f_log INF "Build xataz/rtorrent-flood:filebot ..."
docker build --build-arg WITH_FILEBOT=YES -t xataz/rtorrent-flood:filebot . > /tmp/build.log 2>&1
if [ $? -eq 0 ]; then
    f_log SUC "Build xataz/rtorrent-flood:filebot successful"
    docker tag xataz/rtorrent-flood:filebot xataz/rtorrent-flood:latest-filebot
else
    f_log ERR "Build xataz/rtorrent-flood:filebot failed"
    cat /tmp/build.log
    exit 1
fi
