set transaction isolation level read committed;

select * from Person.Address
order by BusinessEntityID;


-- or 

select * from Person.Person with (nolock)
order by BusinessEntityID;