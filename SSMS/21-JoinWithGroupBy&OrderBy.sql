use sales;

select store_name,count(order_id)'No of orders'
from stores s join orders o
on s.store_id=o.store_id
group by store_name
order by count(order_id);

select brand_name,count(*)'No of times a brand ordered'
from brands b join products p
on b.brand_id=product_id join order_items oi
on oi.product_id= p.product_id
group by brand_name;