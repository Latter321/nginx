#!/bin/bash
LOGPATH=/usr/local/nginx/logs/z.com.access.log
BASEPATH=/data


bak=$BASEPATH/$(date -v -1d +%Y%m%d%H%M).zcom.access.log
echo $bak

sudo mv $LOGPATH $bak
sudo touch $LOGPATH

sudo kill -USR1 'cat /usr/loccal/nginx/logs/nginx.pid'
