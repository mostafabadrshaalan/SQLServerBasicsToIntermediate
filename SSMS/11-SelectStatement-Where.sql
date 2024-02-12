use sales;

select* from customers;

select customer_id, first_name+' '+last_name as 'FullName',phone,city
from customers
where customer_id between 49 and 75;
