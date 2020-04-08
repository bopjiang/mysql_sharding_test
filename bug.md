```
MySQL [db_test]> explain select * from tbl_test11 where SK=1;
+-------+---------+---------+----------------------------------------------+
| type  | slice   | db      | sql                                          |
+-------+---------+---------+----------------------------------------------+
| shard | slice-0 | db_test | SELECT * FROM `tbl_test11_0000` WHERE `SK`=1 |
| shard | slice-0 | db_test | SELECT * FROM `tbl_test11_0001` WHERE `SK`=1 |
| shard | slice-0 | db_test | SELECT * FROM `tbl_test11_0002` WHERE `SK`=1 |
+-------+---------+---------+----------------------------------------------+
3 rows in set (0.001 sec)

MySQL [db_test]> explain select * from tbl_test11 where sk=1;
+-------+---------+---------+----------------------------------------------+
| type  | slice   | db      | sql                                          |
+-------+---------+---------+----------------------------------------------+
| shard | slice-0 | db_test | SELECT * FROM `tbl_test11_0001` WHERE `sk`=1 |
+-------+---------+---------+----------------------------------------------+

```



```
MySQL [db_test]> explain select * from tbl_TEST10;
+---------+---------+---------+---------------------------------+
| type    | slice   | db      | sql                             |
+---------+---------+---------+---------------------------------+
| unshard | slice-0 | db_test | SELECT * FROM `tbl_test 10`     |
+---------+---------+---------+---------------------------------+
```