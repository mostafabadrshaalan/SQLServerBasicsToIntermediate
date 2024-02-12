select p.Id,productname,sum(dbo.CalculatePrice(p.unitprice,oi.quantity)) as 'Total'
from Product p join orderitem oi
on p.id=oi.productid join orders o
on oi.orderid =o.id
group by p.Id,productname;

create or alter procedure SalesByProduct
(
@productname nvarchar(50),
@year int,
@count int output
)
as
begin
select p.Id,productname,o.OrderDate,sum(dbo.CalculatePrice(p.unitprice,oi.quantity)) as 'Total'
from Product p join orderitem oi
on p.id=oi.productid join orders o
on oi.orderid =o.id
where productname=@productname and YEAR(o.orderdate)= @year
group by p.Id,productname,o.OrderDate;

select @count=@@ROWCOUNT
end
go

declare @count int;
exec SalesByProduct 'chai',2013,@count output ;
select @count as 'TOTAL ROWS'


set statistics time, io on;