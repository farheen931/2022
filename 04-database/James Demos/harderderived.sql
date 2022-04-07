use AdventureWorks;

--select * from sales.SalesOrderHeader;
go
create view CustomerSales
as
	select S2005.CustomerID, S2005.SumF2005, S2006.SumF2006,
		S2006.SumF2006 - s2005.SumF2005 as [Difference]
	from
	(
		select CustomerID, sum(freight) as SumF2005
		from sales.SalesOrderHeader
		where year(orderdate) = 2005
		group by CustomerID
	) as S2005
	inner join
	(
		select CustomerID, sum(freight) as SumF2006
		from sales.SalesOrderHeader
		where year(orderdate) = 2006
		group by CustomerID
	) as S2006
	on S2005.CustomerID = S2006.CustomerID;
go

select * from CustomerSales;