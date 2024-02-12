use sales;
alter table stores
add branches varchar(15),
fax varchar(16);

alter table stores
alter column branches text;

exec sp_rename 'stores','Stores';
exec sp_rename 'Stores.Branch','Branches','column';

alter table Stores
drop column Branches,
fax;

