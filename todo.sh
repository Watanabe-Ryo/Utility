#!/bin/zsh
TIME=`date "+%H:%M:%S"`
DATE=`date "+%Y%m%d"`
cd ~/todo
if [ -d $DATE ]; then
else
   mkdir $DATE 
fi
cd ~/todo/$DATE
vi $TIME
