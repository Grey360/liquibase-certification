-- liquibase formatted sql

-- changeset bob:1
CREATE TABLE CUSTOMER 
(
   ID INT NOT NULL, NAME VARCHAR(50) NOT NULL, 
   AGE INT, 
   LASTNAME VARCHAR(50) NOT NULL, 
   YEAR INT NOT NULL, 
   CONSTRAINT PK_CUSTOMER PRIMARY KEY (ID, YEAR)
)
;
--rollback DROP TABLE CUSTOMER

-- changeset bob:2
CREATE TABLE DEPARTMENT 
(
   ID INT NOT NULL, 
   NAME VARCHAR(50) NOT NULL, 
   ACTIVE BOOLEAN DEFAULT TRUE, 
   CONSTRAINT PK_DEPARTMENT PRIMARY KEY (ID)
)
;
--rollback DROP TABLE DEPARTMENT