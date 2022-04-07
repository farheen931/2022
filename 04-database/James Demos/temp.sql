use AdventureWorks;
go

create table #tab1
(

	a int
);

go

insert into #tab1 values(1);


select * from #tab1;

select firstname,lastname
into #tab2
from person.person;

select * from  #tab2;