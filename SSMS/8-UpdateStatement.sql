use sales;
select* from customers;

update customers
set first_name='Ali',last_name='Saleh'
where customer_id=8

update customers
set zip_code=112
where first_name='Ali'or first_name='Mostafa'
