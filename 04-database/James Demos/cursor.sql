use AdventureWorks;
go

declare person_cursor CURSOR for
	select lastname from person.Person;

open person_cursor;


fetch next from person_cursor;

while @@FETCH_STATUS = 0
begin
	fetch next from person_cursor;
end;

close person_cursor;

deallocate person_cursor;