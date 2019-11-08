## Database Initialization

### Recover slave from master

```bash
## master
mysqldump --all-databases --single-transaction  --triggers --routines --events --host=127.0.0.1 --port=13306 --user=root -pexample > dump.sql

## slave
mysql -h127.0.0.1 --port=13316 --user=root -pexample -e  'reset master'
mysql -h127.0.0.1 --port=13316 --user=root -pexample < dump.sql
```

### Config replication

```sql
/*-- on slave --*/
> CHANGE MASTER TO
        MASTER_HOST = "db_master",
        MASTER_PORT = 3306,
        MASTER_USER = "root",
        MASTER_PASSWORD = "example",
        MASTER_AUTO_POSITION = 1;
> START SLAVE;
> SHOW SLAVE STATUS\G
```

### Make slave read-only

```sql
SET GLOBAL read_only = ON;
SET GLOBAL super_read_only = ON;

SHOW VARIABLES LIKE "%read_only%";
```

### Create sharding tables

```bash
mysql -h127.0.0.1 --port=13306 --user=root -pexample -Ddb_test < sql/schema.sql
```


### Load data to tables

```bash
mysql -h127.0.0.1 --port=23306 -utest_shard -ptest_shard -Ddb_test < sql/data.sql
```

## Test

### Read/Write Splitting

```bash
$ mysql -utest_shard -ptest_shard -h127.0.0.1 -P23306 -Ddb_test --comments

# force reading from master
> SELECT/*master*/ * FROM t6;

# read from slave
> SELECT * FROM t6;
```

### join cross sharding

```bash
/* not working */
mysql> select  t1.a, t2.b from tbl_test1 AS t1 left join tbl_test2 AS t2 on t1.sk = t2.sk;
ERROR 1105 (HY000): unknown error: execute in SelectPlan error: ERROR 1054 (42S22): Unknown column 't1_0000.sk' in 'field list'


select tbl_test1.sk, tbl_test1.a, tbl_test2.b from tbl_test1 left join tbl_test2 on tbl_test1.sk = tbl_test2.sk order by tbl_test1.sk;

```

## Shazam-proxy API

### Prometheus metrics
* http://127.0.0.1:23307/api/metric/metrics

### Go profile
* http://127.0.0.1:23307/debug/pprof/
* http://127.0.0.1:23307/debug/pprof/goroutine?debug=1



