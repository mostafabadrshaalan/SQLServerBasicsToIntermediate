-- Remove all elements from the plan cache for the entire instance
DBCC FREEPROCCACHE;

-- Flush the plan cache for the entire instance
DBCC FREEPROCCACHE;

-- Get execution time down to milliseconds
set statistics time ,IO on;

-- To Stop showing the execution time
set statistics time ,IO off;


-- Non Clustered Index

-- Create Index
Create Index Customer_ix
on customer(Firstname);

-- Create Multi column index
create index Customer_firstname_city_ix
on customer(firstname,city);

select count(*) from Customer;

select firstname from customer;

select Count(*) from customer 
where city='London'and firstname='Elizabeth'