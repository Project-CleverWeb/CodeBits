#!/bin/sh

#Minecraft Vars
MCDIR=/minecraft/bukkit   #No trailing slash! Must be absolute!
MCFILE=craftbukkit.jar
MCMIN=512M
MCMAX=1024M
MCWORLD=TheWorld

# Screen Vars
SCRNNAME=mc   # if you run multiple instances rename this for each instance

# Startup Vars
SUMSG="Startup Complete"

# Saving Vars
SAVMSG="Saving..."

# Shutdown Vars
SDMSG="Shutdown is starting"

# Restart Vars
RSMSG="Restarting soon"

# Backup vars
BCKMSG="Starting backup! This will restart the server!"
BCKDIRNAME=backups


# Backup Vars
# feel free to use these in your backup scripts
TIMESTAMP=$(date +%y%m%d.%T)
LOGSTAMP=$(date +%y-%m-%d\ %T)
BCKDIR=$MCDIR/$BCKDIRNAME/$(date +%y-%m)
LOGDIR=$BCKDIR
BCKFILE=$BCKDIR/mc.backup.$MCWORLD.$TIMESTAMP.tar.gz
LOGFILE=$LOGDIR/mc.backup.$MCWORLD.$TIMESTAMP.log

# Make sure we start the script in the right folder
cd $MCDIR