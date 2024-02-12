use sales;
create table customers(
customer_id int not null,
first_name varchar(20)not null,
last_name varchar(20)not null,
email varchar(50)not null,
phone varchar(20)not null,
state varchar(20)not null,
city varchar(20)not null,
street varchar(50)not null,
zip_code varchar(8),
constraint customers_pk primary key(customer_id),
constraint customers_uq unique(phone)
);