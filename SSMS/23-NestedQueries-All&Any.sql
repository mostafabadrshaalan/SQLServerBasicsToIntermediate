use collegeDB;

--GET THE STUDENT WHO HAS MAX MARK
--using top and order by
select top 1 stdno from Register
order by mark desc;

--using Nested Query
select stdno from register
where mark=(select max(mark) from Register);



select stdno from register
where mark>=(select avg(mark)from register);

--Get the students who study the same courses that khaled studied
select s.stdno,firstname,lastname
from students s join Register r
on s.stdno=r.Stdno 
where courseID in (select courseID from Register r join Students s
on r.Stdno=s.Stdno
where firstname='Khaled');

--Get Data of the student whose mark bigger than all the CS departement students
select s.stdno,firstname,lastname
from students s join register r
on s.stdno=r.stdno
where mark>all(select mark from register r join students s
on r.stdno=s.stdno
where depart='CS');

select s.stdno,firstname,lastname
from students s join register r
on s.stdno=r.stdno
where mark>any(select mark from register r join students s
on r.stdno=s.stdno
where depart='CS');

