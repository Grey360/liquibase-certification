-- liquibase formatted sql

-- changeset liquibase:14
create table countries (
    id int primary key,
    name varchar(50) not null,
    abbreviation_4char varchar(4),
    abbreviation_2char varchar(2)
)
-- rollback drop table countries