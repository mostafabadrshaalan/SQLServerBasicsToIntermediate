use sales;
--Way 1
insert into customers(first_name,last_name,phone,email,state,city,street)
values('Mostafa','Badr','01551634794','Email@gmail','TATE','CTY','STREET'),
('Mostafa','shalaan','01594','Email@','TaATE','CTY','STEET');

--Way2
--áÇÒã ÇÍØ ÇáÈíÇäÇÊ Úáì ÍÓÈ ÊÑÊíÈ ÇáÇÚãÏÉ ÚáÔÇä ãíÍÕáÔ ÇÎØÇÁ
insert into customers values('Mostafa','Badr','01551634794','Email@gmail','TATE','CTY','STREET'),
('Mostafa','shalaan','01594','Email@','TaATE','CTY','STEET');