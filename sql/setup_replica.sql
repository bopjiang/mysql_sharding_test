CHANGE MASTER TO
        MASTER_HOST = "db_master",
        MASTER_PORT = 3306,
        MASTER_USER = "root",
        MASTER_PASSWORD = "example",
        MASTER_AUTO_POSITION = 1;
START SLAVE;
