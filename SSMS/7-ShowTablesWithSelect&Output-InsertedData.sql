use sales;

select* from customers;

insert into brands(brand_name)
output inserted.brand_name
values('ADIDAS');
