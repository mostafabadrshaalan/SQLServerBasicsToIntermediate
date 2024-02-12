use sales;

--NULL operator
select*from customers
where phone is null;

select*from customers
where phone is not null;

--IN operator
select* from customers
where state='cairo'or state='alex';
--Or
select* from customers
where state in('cairo','alex');

select* from customers
where state not in('cairo','alex');

--BETWEEN operator
select*from products
where product_id>=5 and product_id<=10;
--OR
select*from products
where product_id between 5 and 10;

select*from products
where product_id not between 5 and 10;
