Create or Alter view OrdersOf2012
WITH SCHEMABINDING
AS
SELECT o.id, orderdate, SUM(oi.quantity * p.unitprice) AS 'Total', COUNT_BIG(*) AS 'Count'
FROM dbo.Orders o
JOIN dbo.OrderItem oi ON o.id = oi.OrderId
JOIN dbo.Product p ON p.Id = oi.ProductId
WHERE YEAR(orderdate) = 2012
GROUP BY o.id, orderdate;

select *from OrdersOf2012;

create unique clustered index order_ix on OrdersOf2012(id);



