## Database Initialization

### recovery slave from master

```bash
## master
mysqldump --all-databases --single-transaction  --triggers --routines --events --host=127.0.0.1 --port=13306 --user=root -pexample > dump.sql

## slave
mysql -h127.0.0.1 --port=13316 --user=root -pexample -e  'reset master'
mysql -h127.0.0.1 --port=13316 --user=root -pexample < dump.sql
```

### set master-slave replication

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

### make slave read-only

```sql
SET GLOBAL read_only = ON;
SET GLOBAL super_read_only = ON;

SHOW VARIABLES LIKE "%read_only%";
```

## Test
### Read/Write Splitting

```bash
$ mysql -utest_shard -ptest_shard -h127.0.0.1 -P23306 -Ddb_test --comments;

# force reading from master
> SELECT/*master*/ * FROM t6;

# read from slave
> SELECT * FROM t6;
```

## shazam-proxy API

### prometheus metrics
* http://127.0.0.1:23307/api/metric/metrics

### Go profile
* http://127.0.0.1:23307/debug/pprof/
* http://127.0.0.1:23307/debug/pprof/goroutine?debug=1



