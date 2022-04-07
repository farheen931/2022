use AdventureWorks;
go

select CustomerID, year(orderdate) as orderyear, sum(freight) as SumF
from sales.SalesOrderHeader
where CustomerID <= 11002
group by customerid, year(orderdate)
order by CustomerID;

select CustomerID, year(orderdate) as orderyear, sum(freight) as SumF
from sales.SalesOrderHeader
where CustomerID <= 11002
group by customerid, year(orderdate) with rollup
order by CustomerID;

select CustomerID, year(orderdate) as orderyear, sum(freight) as SumF
from sales.SalesOrderHeader
where CustomerID <= 11002
group by customerid, year(orderdate) with cube
order by CustomerID;


select customerid, NULL as orderyear, sum(freight) as SumF
from sales.SalesOrderHeader
where customerid <= 11002
group by customerid
union
select NULL, year(orderdate) as  orderyear, sum(freight) as SumF
from sales.SalesOrderHeader
where customerid <= 11002
group by year(orderdate)
union
select NULL,NULL,sum(freight) as sumF
from sales.SalesOrderHeader
where customerid <= 11002;

select customerid, year(orderdate) as orderyear, sum(freight) as SumF
from sales.SalesOrderHeader
where customerid <= 11002
group by grouping sets ((customerid),(year(orderdate)),());


select CustomerID, year(orderdate) as orderyear, sum(freight) as SumF,
grouping_id(customerid,year(orderdate))
from sales.SalesOrderHeader
where CustomerID <= 11002
group by customerid, year(orderdate) with cube
order by CustomerID;
