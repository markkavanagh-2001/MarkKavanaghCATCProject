#! /bin/bash
#This is Question 2.2:
logfile="MarkKavanagh.txt"

date > $logfile
hostname > $logfile
arch > $logfile
uname -a > $logfile
uptime > $logfile
whoami > $logfile
who > $logfile
w > $logfile
top > $logfile
history > $logfile

