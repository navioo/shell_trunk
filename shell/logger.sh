#!/bin/sh

NGINX_LOG_DIR=/Data/apps/nginx/logs
LOG_SAVE_BASE=/Data/logs/nginx
LOG_SAVE_PATH=$LOG_SAVE_BASE/$(date -d yesterday +%Y%m%d%H%M)

mkdir -p $LOG_SAVE_PATH
mv $NGINX_LOG_DIR/z.com.access.log $LOG_SAVE_PATH/$(date -d yesterday +%H%M).access.log
mv $NGINX_LOG_DIR/z.com.error.log $LOG_SAVE_PATH/$(date -d yesterday +%H%M).error.log

kill -USR1 `cat $NGINX_LOG_DIR/nginx.pid`
















#LOG_PATH=/Data/apps/nginx/logs/z.com.access.log
#BASE_PATH=/Data/data

#echo `date -d yesterday +%Y%m%d`
#DATA_PATH=$BASE_PATH/$(date -d yesterday +%Y%m%d%H%M).z.com.access.log
#echo $DATA_PATH

#mv $LOG_PATH $DATA_PATH
#touch $LOG_PATH
#kill -USR1 `cat /Data/apps/nginx/logs/nginx.pid`

