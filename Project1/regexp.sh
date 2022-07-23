#!/bin/bash

# using regular expressions
# displays the lines from /etc/passwd containing
repeat() {
    for i in {1..60}; do echo -n "$1"; done
}
repeat '-';
printf "\n ------------------------Examples using grep---------------\n"
repeat '-';

printf "\n result for grep root /etc/passwd"
grep root /etc/passwd

# display the line numbers contain this search string
printf "\n result for grep -n root /etc/passwd"
grep -n root /etc/passwd

# this check which users are not using bash, but accounts with the nologin shell are not displayed
printf "\n result for grep -v bash /etc/passwd | grep -v nologin"
grep -v bash /etc/passwd | grep -v nologin

# display lines starting with the string "root"
printf "\n result grep ^root /etc/passwd \n"
grep ^root /etc/passwd

# display which accounts have no shell assigned whatsoever
printf "\n grep :$ /etc/passwd \n"
grep :$ /etc/passwd

# check that PATH is exported in ~/.bashrc, first select "export" lines and then
# search for lines starting with the string "PATH", so as not to display
# MANPATH and other possible paths
printf "\n result for grep export ~/.bashrc | grep '\<PATH' \n"
grep export ~/.bashrc | grep '\<PATH'

repeat '-';
printf "\n---------------------Pattern Matching--------------------\n"
repeat '-';