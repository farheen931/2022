use AdventureWorks;
go

create table Tab1
(
	nameid int,
	name varchar(20)
)
go

declare @i int =1;

while @i <= 20000
begin
	insert into Tab1(nameid,name)
		select @i, 'user' + cast(@i as varchar);
	set @i = @i + 1;

end


select * from tab1;