#!/bin/bash

# This script makes a backup of home directory

# Change the values of the variables to make the script work for you
BACKUPDIR=/home
BACKUPFILES=gichuhi
TARFILE=/var/tmp/home_gichuhi.tar
BZIPFILE=/var/tmp/home_gichuhi.tar.bz2
SERVER=besancon
REMOTEDIR=/opt/backup/franky
LOGFILE=/home/gichuhi

cd $BACKUPDIR

#This create the archive
tar cv $TARFILE $BACKUPFILES > /dev/null 2>&1

#First remove theold bzip2 file
#Redirect errors because this generates some if the archive does not exist
rm $BZIPFILE 2> /dev/null
bzip2 $TARFILE
