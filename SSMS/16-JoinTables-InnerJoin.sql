use sales;


--INNER JOIN
--Way 1 To Join Two Tables
select first_name,last_name,order_id
from customers c,orders o
where c.customer_id=o.customer_id;

--Way 2 To Join Two Tables
select first_name,last_name,order_id
from workers w /* inner join OR*/  join orders o
on w.worker_id=o.worker_id;