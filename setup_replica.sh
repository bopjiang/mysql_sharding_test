#!/bin/bash

mysqldump --all-databases --single-transaction  --triggers --routines --events --host=127.0.0.1 --port=13306 --user=root -pexample > dump.sql
mysql -h127.0.0.1 --port=13316 --user=root -pexample -e  'reset master'
mysql -h127.0.0.1 --port=13316 --user=root -pexample < dump.sql
mysql -h127.0.0.1 --port=13316 --user=root -pexample < sql/setup_replica.sql

