#!/bin/bash

# This script makes a backup of home directory

# Change the values of the variables to make the script work for you
BACKUPDIR=/home
BACKUPFILES=gichuhi
TARFILE=/var/tmp/home_gichuhi.tar
BZIPFILE=/var/tmp/home_gichuhi.tar.bz2
SERVER=besancon
REMOTEDIR=/opt/backup/franky
LOGFILE=/home/gichuhi/log/home_backup.log

cd $BACKUPDIR

#This create the archive
tar cf $TARFILE $BACKUPFILES > /dev/null 2>&1 |sudo pv -s $(du -sb . | awk '{print $1}')

#First remove theold bzip2 file
#Redirect errors because this generates some if the archive does not exist
rm $BZIPFILE 2> /dev/null
bzip2 $TARFILE

#Copy the file to another host - we have ssh keys for making this work without intervention
#scp $BZIPFILE $SERVER:$REMOTEDIR > /dev/null 2>&1

#create a timestamp in a logfile
date >> $LOGFILE
echo backup succeeded >> $LOGFILE

