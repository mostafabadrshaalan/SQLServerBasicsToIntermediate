use Northwind2021;

--Query 1
select*from customer;
select*from product;
select*from orderitem;
select*from orders;
select*from Supplier;


--Query 2
select id,firstname+' '+lastname'Name',city
from customer;

--Query 3
select firstname+' '+lastname'Name',phone
from customer
where country in( 'Mexico');

--Query 4
select productName,package,unitprice,(unitprice*1.15)'PriceAfterTaxes'
from Product
where UnitPrice>50;

--Query 5
select companyname,city,phone
from Supplier
--where country!='USA'and country!='UK';
where country not in('USA','UK');

--Query 6
select companyname,Productname,unitprice
from Supplier s join product p
on s.id=p.SupplierId
where s.Country ='USA'
order by companyname;

--Query 7
select firstname+' '+lastname'FullName',count(o.id)"No Of Orders",sum(totalamount)"TotalPaid"
from customer c join orders o
on c.Id=o.customerid
group by firstname,lastname;

--Query 8
select companyname,count(*)"No of products supplied"
from Supplier s join product p
on s.id=p.SupplierId
group by CompanyName
having count(*)>2
order by count(*)desc;

--Query 9
select top(5) productname,UnitPrice
from product
order by UnitPrice desc;


--Query 10
select top (3) productname,count(*)'Many Times Sailed'
from product p join OrderItem oi
on p.Id=oi.ProductId
group by productname
order by count(*)desc;

--Query 11
select *
from product
where UnitPrice>(select avg(UnitPrice) from product);

--Query 12
select distinct firstname+' '+lastname
from customer c join orders o
on c.id=o.CustomerId join OrderItem oi
on o.id=oi.OrderId 
where oi.ProductId in(select productid from customer c join orders o
on c.id=o.CustomerId join OrderItem oi
on o.id=oi.OrderId and firstname='Horst');