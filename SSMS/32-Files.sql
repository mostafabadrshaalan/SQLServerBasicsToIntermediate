select 
*
from sys.database_files;

--Free space & consume space
select 
DB_name() as 'Database',
name,
physical_name,
(size*8/1024)as 'Size',
(size*8/1024)-(FILEPROPERTY(name,'SpaceUsed')*8/1024) as 'Free Space'
from sys.database_files;

--Retrieve Files Details
DBCC showfilestats;

