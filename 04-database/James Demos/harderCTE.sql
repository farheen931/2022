use AdventureWorks;
go

with S2005
as
(
	select CustomerID, sum(freight) as SumF2005
	from sales.SalesOrderHeader
	where year(orderdate) = 2005
	group by CustomerID

),
S2006
as
(
	select CustomerID, sum(freight) as SumF2006
	from sales.SalesOrderHeader
	where year(orderdate) = 2006
	group by CustomerID
)

select S2005.CustomerID, S2005.SumF2005, S2006.SumF2006,
	S2006.SumF2006 - s2005.SumF2005 as [Difference]
from s2005 inner join s2006
on S2005.CustomerID = s2006.CustomerID;