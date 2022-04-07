use AdventureWorks;
go

create or alter function dbo.ufnNames
(
	@e varchar(20)
)
returns table
as
return (
			select firstname + ' ' + lastname as FullName
			from Person.Person
			where PersonType = @e
);

go

select * from dbo.ufnNames('SC');