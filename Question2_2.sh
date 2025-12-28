#! /bin/bash
#This is Question 2.2:
set -o history
exec > MarkKavanagh.txt 2>&1

date
hostname
arch
uname -a
uptime
whoami
who
w
top -n 1
history

