--liquibase formatted sql
--changeset Nilesh:DDL-Initial-Inventory-Table labels:initial-ddl

create table inventory(
id bigint primary key auto_increment,
sku varchar(64) unique not null,
available_qty int not null,
reserved_qty int not null default 0,
created_at timestamp not null default current_timestamp
);

--rollback drop table inventory;