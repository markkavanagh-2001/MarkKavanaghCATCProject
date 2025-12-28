#! /bin/bash
#This is Question 2.2:
exec > MarkKavanagh.txt 2>&1

#Enable history command
set -o history

echo "DATE COMMAND:"
date

echo "   "
echo "HOSTNAME COMMAND:"
hostname

echo "   "
echo "ARCH COMMAND:"
arch

echo "   "
echo "UNAME -A COMMAND:"
uname -a

echo "   "
echo "UPTIME COMMAND:"
uptime

echo "   "
echo "WHOAMI COMMAND:"
whoami

echo  "    "
echo "WHO COMMAND:"
who

echo "   "
echo "W COMMAND:"
w

echo " "
echo "TOP COMMAND:"
top -n 1

echo " "
echo "HISTORY COMMAND:"
history

