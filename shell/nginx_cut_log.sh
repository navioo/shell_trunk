#!/bin/sh
NGINX_LOG_DIR=/Data/apps/nginx/logs
LOG_SAVE_BASE=/Data/logs/nginx
LOG_SAVE_PATH=$LOG_SAVE_BASE/$(date +%Y%m)

mkdir -p $LOG_SAVE_PATH
mv $NGINX_LOG_DIR/access.log $LOG_SAVE_PATH/$(date -d yesterday +%d).access.log
mv $NGINX_LOG_DIR/error.log $LOG_SAVE_PATH/$(date -d yesterday +%d).error.log

kill -USR1 `cat $NGINX_LOG_DIR/nginx.pid`

#crontab -e
#0 0 * * * sh /Data/script/nginx_cut_log.sh