create table brands
( brand_id int identity(1,1) not null,
brand_name varchar(20) not null,
constraint brands_pk primary key(brand_id)
);

create table products
(product_id int identity(1,1)not null,
product_name varchar(20)not null,
brand_id int not null,
model varchar(6)not null,
constraint products_pk primary key(product_id),
constraint brands_products_fk foreign key(brand_id)
references brands(brand_id)
);

create table stores
(store_id int identity(1,1)not null,
store_name varchar(20)not null,
city varchar(20)not null,
phone varchar(20)not null,
constraint stores_pk primary key (store_id)
);

create table workers
(worker_id int identity(1,1)not null,
first_name varchar(20)not null,
last_name varchar(20)not null,
salary numeric(10,2) not null check (salary between 3000 and 100000),
hire_date date not null,
store_id int not null,
constraint workers_pk primary key(worker_id),
constraint stores_workers_fk foreign key(store_id)
references stores(store_id)
);

