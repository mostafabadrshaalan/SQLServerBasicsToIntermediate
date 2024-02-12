use sales;
alter table stores
add constraint stores_uq unique(phone);

alter table stores
drop constraint stores_uq;

alter table workers
drop constraint stores_workers_fk;

alter table stores
drop constraint stores_pk;

alter table stores
add constraint stores_pk primary key(store_id);

alter table workers
add constraint stores_workers_fk foreign key(store_id)
references stores (store_id);