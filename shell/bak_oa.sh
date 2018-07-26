#!/bin/sh

user=root
pass=root
mysqldump -u$user -p$pass -B oamgr_db > oamgr_`date +%Y-%m-%d`.sql
#mysqldump -u$user -p$pass oamgr_db tbl_user > tbl_user.sql
#mysqldump -u$user -p$pass -B oamgr_db | gzip > oamgr_`date +%Y-%m-%d`.sql.gz
