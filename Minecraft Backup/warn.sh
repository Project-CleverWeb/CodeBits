#!/bin/sh
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 15 minutes"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 300
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 10 minutes"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 300
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 5 minutes"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 240
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 1 minute"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 30
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 30 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 15
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 15 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 5
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 10 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 5
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 5 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 1
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 4 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 1
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 3 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 1
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 2 seconds"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 1
screen -S $SCRNNAME -X stuff "say Server ${KEYWORD} in 1 second"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 1
screen -S $SCRNNAME -X stuff "kickall Server is ${KEYWORD}"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 5
screen -S $SCRNNAME -X stuff "save-all"
screen -S $SCRNNAME -X eval "stuff \015"
sleep 5