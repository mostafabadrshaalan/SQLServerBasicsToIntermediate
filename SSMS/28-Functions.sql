use Northwind2021;
select * from OrderItem;

select * from orders;


select
orderid,
productid,
unitprice,
quantity,
CONVERT(money,dbo.CalculatePrice(unitprice,quantity),2) as 'Subtotal'
from OrderItem
where orderid=1

select
o.id,
Customerid,
orderdate,
convert(money,sum(dbo.calculateprice(oi.unitprice,oi.quantity)),2)as 'Total'
from Orders o join orderitem oi
on o.Id=oi.OrderId
where o.id=1
group by
o.id,
Customerid,
orderdate

--Scaler Function
create or alter function CalculatePrice(@unitprice money,@quantity int)
returns money with schemabinding as begin 
declare @TotalAmount money
select @TotalAmount = convert(money,@unitprice*@quantity,2);
return @TotalAmount;
end
go

drop function dbo.CalculatePrice;

-- Table Valued Function
create or alter function GetOrderDetials(@orderid int)
returns Table
as 
return
(
select
orderid,
productid,
unitprice,
quantity,
CONVERT(money,dbo.CalculatePrice(unitprice,quantity),2) as 'Subtotal'
from OrderItem
where orderid=@orderid
);

select * from dbo.GetOrderDetials(1);

create or alter function CalculateTotal(@orderid int)
returns table
as
return
(
select
o.id,
Customerid,
orderdate,
convert(money,sum(dbo.calculateprice(oi.unitprice,oi.quantity)),2)as 'Total'
from Orders o join orderitem oi
on o.Id=oi.OrderId
where o.id=1
group by
o.id,
Customerid,
orderdate
);

select * from dbo.CalculateTotal(1);

create or alter function GetOrdersOfCustomer(@customerid int)
returns table
as
return
(
    select
        o.id,
        o.CustomerId,
        o.orderdate,
        ct.Total as 'Total'
    from Orders o 
    cross apply dbo.CalculateTotal(o.id) as ct
    where o.CustomerId = @customerid
);

select * from dbo.GetOrdersOfCustomer(5);
select columns_Updated();