use sales;

--Way 1 To Join More Than two Tables
select first_name+' '+last_name 'Customer Name',order_id,orderdate,store_name
from customers c,orders o,stores s
where c.customer_id=o.customer_id and o.store_id=s.store_id;

--Way 2 To Join More Than Two Tables
select first_name+' '+last_name'Customer Name',order_id,orderdate,store_name
from customers c join orders o on c.customer_id=o.customer_id 
join stores s on o.store_id=s.store_id;

--ex2
select first_name+' '+last_name'Customer Name',brand_name
from customers c ,orders o,order_items oi,products p,brands b
where c.customer_id=o.customer_id and o.order_id=oi.order_id and oi.product_id=p.product_id and p.brand_id=b.brand_id;


select first_name+' '+last_name'Customer Name',brand_name
from customers c join orders o on c.customer_id=o.customer_id
join order_items oi on  o.order_id=oi.order_id
join products p on oi.product_id=p.product_id
join brands b
on p.brand_id=b.brand_id;