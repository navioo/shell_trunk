#!/bin/sh
NGINX_LOG_DIR=/Data/apps/nginx/logs
DATA_SAVE_DIR=/Data/logs/nginx
DATA_SAVE_PATH=$DATA_SAVE_DIR/$(date -d yesterday +%Y%m)
mkdir -p $DATA_SAVE_PATH
mv $NGINX_LOG_DIR/access.log $DATA_SAVE_PATH/$(date -d yesterday +%d).access.log
mv $NGINX_LOG_DIR/error.log $DATA_SAVE_PATH/$(date -d yesterday +%d).error.log
#touch $NGINX_LOG_DIR/access.log
#向nginx主进程发送USR1信号，USR1信号是重新打开日志文件
kill -USR1 `cat $NGINX_LOG_DIR/nginx.pid`


#crontab -e
#*/1 * * * * sh /Data/script/logger.sh