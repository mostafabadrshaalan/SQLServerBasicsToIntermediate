use sales;

select first_name ,last_name
from customers
order by first_name;

select city,first_name +' '+last_name as 'FullName'
from customers
order by city ,first_name desc;