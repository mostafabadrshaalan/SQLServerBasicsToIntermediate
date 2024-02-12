use sales;

select avg(customer_id) avg_customer_id
from customers;

select max(customer_id) max_customer_id
from customers;

select min(customer_id) "customer id"
from customers;

select cast(round(avg(customer_id),2)as dec(10,2)) round_avg_customer_id
from customers;

select count(*) Customer_count
from customers;

select max(customer_id)Max_id,min(customer_id)Min_id,avg(customer_id)Avg_id
from customers;

select max(orderdate)Last_order,min(orderdate)First_order
from orders;

select count(*)'No of orders',max(orderdate)'last order',min(orderdate)'first order'
from orders
where customer_id=30;

