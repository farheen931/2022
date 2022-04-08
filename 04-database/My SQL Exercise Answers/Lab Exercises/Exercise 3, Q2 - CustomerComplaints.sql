--Exercise 2:--
USE Northwind;

--Task 1:--
SELECT OrderID, CustomerID, OrderDate
FROM dbo.Orders
WHERE CustomerID = 'ALFKI' OR CustomerID =  'ERNSH' OR CustomerID = 'SIMOB';

--Task 2:--
SELECT OrderID, CustomerID, OrderDate
FROM dbo.Orders
WHERE (CustomerID = 'ALFKI' OR CustomerID =  'ERNSH' OR CustomerID = 'SIMOB')
AND (OrderDate >= '1 Aug 1997' AND OrderDate <= '31 Aug 1997');

--Task 3:--
SELECT OrderID, CustomerID, OrderDate
FROM dbo.Orders
WHERE CustomerID in ('ALFKI','ERNSH','SIMOB')
AND OrderDate BETWEEN '19970801' AND '19970831';

--Optional:--
SELECT OrderID, CustomerID, OrderDate, EmployeeID
FROM dbo.Orders
WHERE OrderDate BETWEEN '19970601' AND '19970831'
AND EmployeeID in (1,3,5,7,9);
