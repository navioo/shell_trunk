#!/bin/sh

user=root
pass=root

database=`mysql -u$user -p$pass -e "show databases;"|sed 1,2d`
for data in $database
do
        mysqldump -u$user -p$pass -B $data > ${data}_`date +%Y-%m-%d`.sql
done
