use sales;

--Case 1 LEFT OUTER JOIN
select c.customer_id,first_name,last_name,email,order_id,store_id
from customers c left outer join orders o
on c.customer_id=o.customer_id;


--Case 2 RIGHT OUTER JOIN
select c.customer_id,first_name,last_name,email,order_id,store_id
from customers c right outer join orders o
on c.customer_id=o.customer_id;


--Case 3 FULL OUTER JOIN
select c.customer_id,first_name,last_name,email,order_id,store_id
from customers c full outer join orders o
on c.customer_id=o.customer_id;