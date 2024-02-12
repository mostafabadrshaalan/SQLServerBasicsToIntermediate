use sales;


select category_id "category_id",max(price)"max_price",min(price)min_price
from products
group by category_id;

select customer_id,count(*) 'No of orders'
from orders
group by customer_id
having count(*)>5;

select brand_name'brand name',count(*) 'No of products',max(price)'max price',min(price)'min price'
from products p join brands b on p.brand_id=b.brand_id
group by brand_name
having count(*)>4;


select brand_name'brand name',count(*) 'No of products',max(price)'max price',min(price)'min price'
from products p join brands b on p.brand_id=b.brand_id
group by brand_name
having count(*)<3;

select brand_name'brand name',count(*) 'No of products',max(price)'max price',min(price)'min price'
from products p join brands b on p.brand_id=b.brand_id
group by brand_name
having count(*)>3;