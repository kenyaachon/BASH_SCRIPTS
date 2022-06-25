#!/bin/bash

#This script reads 3 positional parameters and prints them out
POSTPAR1="$1"
POSTPAT2="$2"
POSTPAR3="$3"

echo "$1 is the first positional parameter, \$1."
echo "$2 is the second positional parameter, \$2."
echo "$3 is the third position parameter, \$3"

echo "The total number of psotion parameters is $#"
echo "The exit status of the most recently executed in the foreground pipeline $?"
echo "The process ID of the shell $$"
echo "The process ID of the most recently executed background command $!"
echo "Expands to the name of the shell $0"
echo "Expands to the positonal parameters $@"
