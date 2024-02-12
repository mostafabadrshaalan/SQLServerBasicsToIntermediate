/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [Id]
      ,[FirstName]
      ,[LastName]
      ,[City]
      ,[Country]
      ,[Phone]
  FROM [Northwind2021].[dbo].[Customer]

  DBCC FREEPROCCACHE;
  SET STATISTICS TIME ,IO ON;

  select firstname,country from customer
  where firstname like '%na%' ;

  create index customer_ix
  on customer(firstname)
  Include (country);

  drop index customer_ix
  on customer;
