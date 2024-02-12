use sales;

create view v_product_info
as
select product_id,product_name,price,brand_name,category_name
from products p join brands b
on p.brand_id=b.brand_id join categories c
on p.category_id=c.category_id;

select*from v_product_info;

select product_id,product_name,price
from v_product_info
where price <300;

alter view v_product_info
as
select product_id,product_name
from v_product_info;
