#!/bin/bash

# set colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

if eth0_full=$(ifconfig eth0 2>/dev/null); then
    eth0=$(echo $eth0_full | grep inet | cut -d" " -f10 | head -1)
    printf "${YELLOW}eth0${NO_COLOR}\n%s\n" "$eth0"
fi

if tun0_full=$(ifconfig tun0 2>/dev/null); then
    tun0=$(echo $tun0_full | grep inet | cut -d" " -f10 | head -1)
    printf "${YELLOW}tun0${NO_COLOR}\n%s\n" "$tun0"
fi

exit 1