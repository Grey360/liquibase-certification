-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: sql.sql
-- Ran at: 11/03/2021, 13:26
-- Against: CERTIF_LIQ_SRC@jdbc:oracle:thin:@localhost:1521/XE
-- Liquibase version: 4.2.2
-- *********************************************************************

-- Lock Database
UPDATE CERTIF_LIQ_SRC.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '192.168.1.193 (192.168.1.193)', LOCKGRANTED = TO_TIMESTAMP('2021-03-11 13:26:49.578', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Rolling Back ChangeSet: sql.sql::a7b.2::activity.7
drop table company_a7b;

DELETE FROM CERTIF_LIQ_SRC.DATABASECHANGELOG WHERE ID = 'a7b.2' AND AUTHOR = 'activity.7' AND FILENAME = 'sql.sql';

-- Rolling Back ChangeSet: sql.sql::a7b.1::activity.7
drop table person_a7b;

DELETE FROM CERTIF_LIQ_SRC.DATABASECHANGELOG WHERE ID = 'a7b.1' AND AUTHOR = 'activity.7' AND FILENAME = 'sql.sql';

-- Release Database Lock
UPDATE CERTIF_LIQ_SRC.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

