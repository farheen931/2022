use AdventureWorks;
go

select SalesOrderID, CustomerID, Freight, year(orderdate) as orderyear
from sales.SalesOrderHeader;

select SalesOrderID, CustomerID, Freight, year(orderdate) as orderyear,
	sum(freight) over (order by year(orderdate)) as SumF,
	avg(freight) over (order by year(orderdate)) as AvgF
from sales.SalesOrderHeader;

select SalesOrderID, CustomerID, Freight, year(orderdate) as orderyear,
	sum(freight) over (partition by customerid order by year(orderdate)) as SumF
from sales.SalesOrderHeader
order by customerid, orderyear;

select SalesOrderID, CustomerID, Freight, year(orderdate) as orderyear,
	rank() over (order by freight desc) as FRank,
	dense_rank() over (order by freight desc) as FDRank,
	ROW_NUMBER() over (order by freight desc) as FRN
from sales.SalesOrderHeader;


select SalesOrderID, CustomerID, Freight, year(orderdate) as orderyear,
	NTILE(6) over (order by freight desc) as FT
from sales.SalesOrderHeader;

select CustomerID, Freight, year(orderdate) as orderyear,
LAG(freight, 1, 0) over (partition by customerid order by year(orderdate)) as LagF
from sales.SalesOrderHeader
order by CustomerID;


select CustomerID, Freight, year(orderdate) as orderyear,
LEAD(freight, 1, 0) over (partition by customerid order by year(orderdate)) as LagF
from sales.SalesOrderHeader
order by CustomerID;

select CustomerID, Freight, year(orderdate) as orderyear,
last_value(freight) over (partition by customerid order by year(orderdate)) as LagF
from sales.SalesOrderHeader
order by CustomerID;

select SalesOrderID, CustomerID, Freight, year(orderdate) as orderyear,
	sum(freight) over (partition by customerid order by year(orderdate) rows between 2 preceding and current row) 
		as [Running Totals]
from sales.SalesOrderHeader
order by  customerid;


