
mysqldump -h 127.0.0.1 -u root -p --no-data db_test> schema.sql
mysqldump -h 127.0.0.1 -u root -p --no-create-info db_test> data.sql


explain select count(1) from tbl_test1 t1, tbl_test3 t3;
/*
+-------+---------+---------+-------------------------------------------------------------------------------+
| type  | slice   | db      | sql                                                                           |
+-------+---------+---------+-------------------------------------------------------------------------------+
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0000` AS `t1`) JOIN `tbl_test3_0000` AS `t3` |
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0001` AS `t1`) JOIN `tbl_test3_0001` AS `t3` |
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0002` AS `t1`) JOIN `tbl_test3_0002` AS `t3` |
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0003` AS `t1`) JOIN `tbl_test3_0003` AS `t3` |
+-------+---------+---------+-------------------------------------------------------------------------------+
*/

explain select count(1) from tbl_test1 t1, tbl_test2 t2;

/*
+-------+---------+---------+-------------------------------------------------------------------------------+
| type  | slice   | db      | sql                                                                           |
+-------+---------+---------+-------------------------------------------------------------------------------+
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0000` AS `t1`) JOIN `tbl_test2_0000` AS `t2` |
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0001` AS `t1`) JOIN `tbl_test2_0001` AS `t2` |
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0002` AS `t1`) JOIN `tbl_test2_0002` AS `t2` |
| shard | slice-0 | db_test | SELECT COUNT(1) FROM (`tbl_test1_0003` AS `t1`) JOIN `tbl_test2_0003` AS `t2` |
+-------+---------+---------+-------------------------------------------------------------------------------+
*/
