#!/bin/sh

logfile=/program/log/backup/bak.log
date=`date`
echo "==========================================================================================="

dir=`dirname $logfile`
[ ! -d $dir ] && mkdir -p $dir

echo $date >> $logfile

tar -zcvf /root/etc.tar.gz /etc >> $logfile 2>> $logfile || exit 2
mv /root/etc.tar.gz /tmp/ >> $logfile 2>> $logfile

