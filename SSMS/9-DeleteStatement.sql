use sales;

delete from customers
where customer_id=9;

delete from customers
where customer_id between 30 and 35;

delete top(5) from customers;

delete top(10)percent from customers;