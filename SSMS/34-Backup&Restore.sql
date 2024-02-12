backup database Northwind2021
to disk ='C:\Users\USER\Desktop\Backup\Northwind2021.BAK'
with noinit,
name='Backup_1',
description='First Backup';


backup log Northwind2021
to disk ='C:\Users\USER\Desktop\Northwind2021_log.BAK'
with noinit,
name='Backup_log_1',
description ='First Backup';

update Customer set phone='030-0074333'
where id=1;

backup log Northwind2021
to disk ='C:\Users\USER\Desktop\Northwind2021_log.BAK'
with noinit,
name='Backup_log_2',
description ='Second Backup';

update Customer set phone='030-0074344'
where id=1;

restore headeronly from disk ='C:\Users\USER\Desktop\Northwind2021_log.BAK';
restore filelistonly from disk='C:\Users\USER\Desktop\Northwind2021_log.BAK';


--Step 0 Create new datebase for test (northwind_test)
--Step 1
restore database northwind2021_test
from disk ='path'
with replace,
move 'northwind' to disk ='northwind_test.mdf',
move 'northwind.ldf' to disk ='northwind_test_log.ldf',
norecovery;

--Step 2
restore log northwind2021_test from disk ='northwind2021_log.bak'
with file=1,
norecovery;

--Step 3
restore database northwind_test with recovery