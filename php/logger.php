<?php
date_default_timezone_set('PRC');
	$basedir = '/program/www';
	$logpath = $basedir . 'log_' . date('YmdHi');
	$mkdir($logpath, 0777, true);
	$logfile = $logpath . 's_' . date('s');
	file_put_contents($logfile, date('Y-m-d H:i:s'));

#crontab -e
#/1 * * * * /program/app/php/bin/php /program/script/php/test.php