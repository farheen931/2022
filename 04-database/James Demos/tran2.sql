use AdventureWorks;
go

begin tran
	update person.Person
	set FirstName = 'Kenny'
	where BusinessEntityID = 1;

rollback tran