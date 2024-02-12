use sales;

select top 10 product_name,price
from products
order by price desc;

select top 10 percent product_name,price
from products
order by price desc;

select top 3 with ties first_name,salary
from customers
order by salary desc