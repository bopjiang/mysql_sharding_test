/* tbl_test1, sharding by 'sk' */
DROP TABLE IF EXISTS `tbl_test1_0000`;
CREATE TABLE `tbl_test1_0000` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY uk_sk (`sk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_test1_0001`;
CREATE TABLE `tbl_test1_0001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY uk_sk (`sk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_test1_0002`;
CREATE TABLE `tbl_test1_0002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY uk_sk (`sk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_test1_0003`;
CREATE TABLE `tbl_test1_0003` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY uk_sk (`sk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* tbl_test2, sharding by 'sk' */
DROP TABLE IF EXISTS `tbl_test2_0000`;
CREATE TABLE `tbl_test2_0000` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_test2_0001`;
CREATE TABLE `tbl_test2_0001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_test2_0002`;
CREATE TABLE `tbl_test2_0002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_test2_0003`;
CREATE TABLE `tbl_test2_0003` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b` int(11) DEFAULT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* tbl_test3, sharding by 'sk' */
DROP TABLE IF EXISTS `tbl_test3_0000`;
CREATE TABLE `tbl_test3_0000` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_test3_0001`;
CREATE TABLE `tbl_test3_0001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_test3_0002`;
CREATE TABLE `tbl_test3_0002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_test3_0003`;
CREATE TABLE `tbl_test3_0003` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_TEST10_0000`;
CREATE TABLE `tbl_TEST10_0000`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_TEST10_0001`;
CREATE TABLE `tbl_TEST10_0001`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_TEST10_0002`;
CREATE TABLE `tbl_TEST10_0002`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `tbl_TEST10_0003`;
CREATE TABLE `tbl_TEST10_0003`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/* tbl_global, not sharding*/
DROP TABLE IF EXISTS `tbl_global`;
CREATE TABLE `tbl_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g` int(11) NOT NULL,
  `sk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
