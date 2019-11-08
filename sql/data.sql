
BEGIN;
INSERT INTO `tbl_test1`(a, sk) VALUES (0,100);
INSERT INTO `tbl_test1`(a, sk) VALUES (1,101);
INSERT INTO `tbl_test1`(a, sk) VALUES (2,102);
INSERT INTO `tbl_test1`(a, sk) VALUES (3,103);
INSERT INTO `tbl_test1`(a, sk) VALUES (4,104);
INSERT INTO `tbl_test1`(a, sk) VALUES (5,105);
INSERT INTO `tbl_test1`(a, sk) VALUES (6,106);
INSERT INTO `tbl_test1`(a, sk) VALUES (7,107);
COMMIT;

BEGIN;
INSERT INTO `tbl_test2`(b, sk) VALUES (10,100);
INSERT INTO `tbl_test2`(b, sk) VALUES (11,101);
INSERT INTO `tbl_test2`(b, sk) VALUES (12,102);
INSERT INTO `tbl_test2`(b, sk) VALUES (13,103);
INSERT INTO `tbl_test2`(b, sk) VALUES (14,104);
INSERT INTO `tbl_test2`(b, sk) VALUES (15,105);
INSERT INTO `tbl_test2`(b, sk) VALUES (16,106);
INSERT INTO `tbl_test2`(b, sk) VALUES (17,107);
COMMIT;

BEGIN;
INSERT INTO `tbl_test3`(c, sk) VALUES (20,100);
INSERT INTO `tbl_test3`(c, sk) VALUES (21,101);
INSERT INTO `tbl_test3`(c, sk) VALUES (22,102);
INSERT INTO `tbl_test3`(c, sk) VALUES (23,103);
INSERT INTO `tbl_test3`(c, sk) VALUES (24,104);
INSERT INTO `tbl_test3`(c, sk) VALUES (25,105);
INSERT INTO `tbl_test3`(c, sk) VALUES (26,106);
INSERT INTO `tbl_test3`(c, sk) VALUES (27,107);
COMMIT;