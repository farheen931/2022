use AdventureWorks;
go

--Derived table
select sum(AvgF) as SumAvgFs
from 
(
	select customerid, avg(freight) as AvgF 
	from sales.SalesOrderHeader
	group by CustomerID
) as AvgofFreights;


-- or rewrite as a CTE

with AvgofFreights
as
(
	select customerid, avg(freight) as AvgF 
	from sales.SalesOrderHeader
	group by CustomerID
)
select sum(avgF) as SumAvgFs from AvgofFreights;