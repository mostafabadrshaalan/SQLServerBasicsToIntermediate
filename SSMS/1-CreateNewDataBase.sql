use master;
create database sales
on(
name =sales_data,
filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\salesdata.mdf',
size=10,
maxsize=40,
filegrowth=5)
log on(
name=sales_log,
filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\saleslog.ldf',
size=10,
maxsize=40,
filegrowth=5)
go
