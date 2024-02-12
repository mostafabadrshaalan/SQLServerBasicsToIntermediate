use sales;
create table orders(
order_id int not null,
order_type varchar(10)not null,
order_status varchar(10)not null,
order_date date not null,
customer_id int not null,
constraint orders_pk primary key(order_id),

constraint customers_orders_fk foreign key(customer_id)
references customers(customer_id)
);