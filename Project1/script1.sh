#!/bin/bash
# to run this program use the command chmod u+x script1.sh
clear

echo "The script starts now"

echo "Hi, $USER!"
echo

echo "I will now fetch you list of connected users"
echo
set -x # activate debugging from here
w
set +x # stop debugging from here
echo

echo "I'm setting two variabes now."
COLOUR="black"
VALUE="9"
echo "This is a string: $COLOUR"
echo "And this is a number: $VALUE"
echo

echo "I'm giving you back your prompt now."
echo
