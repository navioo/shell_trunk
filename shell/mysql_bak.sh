#!/bin/sh

user=root
pass=root

#qldump -uroot -p'root' -B oamgr_db > oa.sql
database=`mysql -u$user -p$pass -e "show databases;"|sed 1,2d`
for data in $database
do
	#mysqldump -u$user -p$pass -B $data > ${data}-`date +%Y-%m-$d`.sql
	mysqldump -u$user -p$pass -B $data|gzip > ${data}-`date +%Y-%m-$d`.sql.gz
done
~      
