-- liquibase formatted sql

-- changeset your.name:01
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
-- rollback drop table person

-- changeset your.name:01
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
-- rollback drop table company