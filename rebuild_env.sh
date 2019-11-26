#!/bin/bash

set -e 
set -x

docker-compose down
rm -fr mysql_master/data mysql_master/logs
rm -fr mysql_slave/data mysql_slave/logs

docker-compose up
sleep 60
mysqldump --all-databases --single-transaction  --triggers --routines --events --host=127.0.0.1 --port=13306 --user=root -pexample > dump.sql
mysql -h127.0.0.1 --port=13316 --user=root -pexample -e  'reset master'
mysql -h127.0.0.1 --port=13316 --user=root -pexample < dump.sql
mysql -h127.0.0.1 --port=13316 --user=root -pexample < sql/create_replica.sql

