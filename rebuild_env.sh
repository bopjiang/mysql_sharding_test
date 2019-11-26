#!/bin/bash
set -e 
set -x

docker-compose down
rm -fr mysql_master/data mysql_master/logs
rm -fr mysql_slave/data mysql_slave/logs

docker-compose up
sleep 60
./setup_replica.sh
