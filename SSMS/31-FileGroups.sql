use Warehouse;
select * from sys.filegroups;

alter database warehouse add filegroup secfg;


alter database warehouse 
add file
(
name=N'ddd',
filename=N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ddd.ndf',
size=1024,
filegrowth=1024
)
to filegroup[secfg];