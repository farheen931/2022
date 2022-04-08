USE Northwind;

--Aggregates:--

SELECT * FROM dbo.Orders;

SELECT SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders; 

SELECT COUNT(*) FROM dbo.Employees;

SELECT COUNT(Region) FROM dbo.Employees;

SELECT * FROM dbo.Customers;

SELECT COUNT(Country) FROM dbo.Customers; --Comes back with number in the country column

--To know how many countries: 
SELECT COUNT(DISTINCT Country) FROM dbo.Customers;

SELECT MIN(Companyname), MAX(Companyname)
FROM dbo.Customers; --Gives first and last alphabetically

SELECT MIN(Orderdate), MAX(Orderdate)
FROM dbo.Orders;  --Gives earliest and latest order

--GROUP BY:--

--Sum up these aggregates for each of the customers (sub total):--
--GROUP the tables and for each of these calculate these aggregates:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
GROUP BY CustomerID; --For each customerID, these are thr aggregates

--ERROR WAY: Calculate for where freight is over 1000:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
WHERE SUM(Freight) >= 1000 --Results in error as you can't include sum in a where
GROUP BY CustomerID

--CORRECT WAY: Calculate for where freight is over 1000:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
GROUP BY CustomerID
HAVING SUM(Freight) >= 1000; --Filter with an aggregate, need to use HAVING

--Using HAVING and WHERE:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
WHERE CustomerID like 'b%'
GROUP BY CustomerID
HAVING SUM(Freight) >= 1000; 