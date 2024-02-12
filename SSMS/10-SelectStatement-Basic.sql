use sales;
select* from customers;

select customer_id,first_name,last_name,city
from customers;

select customer_id,first_name+' '+last_name,city
from customers;

select customer_id,first_name+' '+last_name as 'Customer Name',city
from customers;