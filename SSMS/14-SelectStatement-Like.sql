use sales;

select* from customers
where first_name like 'A%';

select* from customers
where first_name like '%er';

select* from customers
where first_name like '____';

select* from customers
where first_name like 'a__';

select* from customers
where email like'%@gmail.com';

select* from customers
where first_name like '[fe]%';

select* from customers
where first_name like '[A-F]%';

select* from customers
where first_name not like '____';

select* from customers
where first_name not like 'A%';

select* from customers
where customer_id like '3%';

select* from customers
where first_name like 'f__a';