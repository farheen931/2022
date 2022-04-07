use AdventureWorks;
go

declare @a int = 5;
declare @b int;
set @b = 4;
declare @c int = 3, @d int = 7


--select @a + (@b * @c);
select convert(decimal(5,2),convert(decimal,@a) /@c);

select convert(decimal(5,2),convert(decimal(5,2),@a)/convert(decimal(5,2),@c));

select cast(@a as decimal)/@c;

--select 3./2

/*
Brackets
Orders of / Indices
Divide
Multiply
Add
Subtraction
*/

declare @e varchar(20) = 'hello', @f varchar(20) = 'World';

select @e + ' ' + @f;

declare @g date = '20220330';   -- YYYYMMDD   - universal format

--select @g;

select convert(varchar,@g,103);


select SalesOrderID, convert(varchar,OrderDate,103) as UKOrderdate 
from sales.SalesOrderHeader
where orderdate < '20051231';
