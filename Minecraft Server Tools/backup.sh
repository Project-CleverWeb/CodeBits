#!/bin/sh
scriptPath=$(pwd)
. $scriptPath/vars.sh

screen -S $SCRNNAME -X stuff "say ${BCKMSG}"
screen -S $SCRNNAME -X eval "stuff \015"

KEYWORD="Starting Backup"
. $scriptPath/warn.sh

# Shutdown minecraft
screen -S mc -X stuff 'stop'
screen -S mc -X eval "stuff \015"
sleep 30
screen -S mc -X quit
sleep 5

# Backup script here
echo "Starting backup on "$LOGSTAMP >> $LOGFILE
tar cvf $BCKFILE $MCDIR >> $LOGFILE
echo "

" # create some seperation if more than 1 backup per day

# start minecraft
cd $MCDIR
screen -dmS $SCRNNAME java -Xms$MCMIN -Xmx$MCMAX-jar ./$MCFILE nogui