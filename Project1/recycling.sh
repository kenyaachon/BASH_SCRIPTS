#!/bin/bash

# This script makes a backup of home directory

# Change the values of the variables to make the script work for you
BACKUPDIR=/home/gichuhi/Documents
BACKUPFILES=gichuhi
TARFILE=/var/tmp/home_gichuhi.tar
BZIPFILE=/var/tmp/home_gichuhi.tar.bz2
SERVER=besancon
REMOTEDIR=/opt/backup/franky
LOGFILE=/home/gichuhi/log/home_backup.log
LOGDIR=/home/gichuhi/log

cd $BACKUPDIR

#This create the archive
tar cf $TARFILE $BACKUPFILES > /dev/null 2>&1
#First remove theold bzip2 file
#Redirect errors because this generates some if the archive does not exist
echo "Hello there my b"
rm $BZIPFILE 2> /dev/null
bzip2 $TARFILE
echo "almost done"
#Copy the file to another host - we have ssh keys for making this work without intervention
#scp $BZIPFILE $SERVER:$REMOTEDIR > /dev/null 2>&1

#create a timestamp in a logfile
mkdir $LOGDIR
touch $LOGFILE 
date >> $LOGFILE
echo backup succeeded >> $LOGFILE

#reset the system
rm -r $LOGDIR

