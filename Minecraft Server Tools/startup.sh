#!/bin/sh
scriptPath=$(pwd)
. $scriptPath/vars.sh

cd $MCDIR
screen -dmS $SCRNNAME java -Xms$MCMIN -Xmx$MCMAX -jar ./$MCFILE nogui

sleep 45 #some plugins take a while
screen -S $SCRNNAME -X stuff "say ${SUMSG}"
screen -S $SCRNNAME -X eval "stuff \015"
