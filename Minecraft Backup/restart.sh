#!/bin/sh
scriptPath=$(pwd)
. $scriptPath/vars.sh

screen -S $SCRNNAME -X stuff "say ${RSMSG}"
screen -S $SCRNNAME -X eval "stuff \015"

KEYWORD="Restarting"
. $scriptPath/warn.sh

screen -S mc -X stuff 'stop'
screen -S mc -X eval "stuff \015"
sleep 30
screen -S mc -X quit
sleep 5
cd $MCDIR
screen -dmS $SCRNNAME java -Xms$MCMIN -Xmx$MCMAX -jar ./$MCFILE nogui
