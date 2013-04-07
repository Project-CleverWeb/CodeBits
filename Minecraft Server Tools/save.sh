#!/bin/sh
scriptPath=$(pwd)
. $scriptPath/vars.sh

screen -S mc -X stuff "say ${SAVMSG}"
screen -S mc -X eval "stuff \015"
screen -S mc -X stuff 'save-all'
screen -S mc -X eval "stuff \015"