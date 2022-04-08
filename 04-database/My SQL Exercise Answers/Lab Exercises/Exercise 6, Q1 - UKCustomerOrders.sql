--Exercise 1: Join Fundamentals: --

--Task 1: Create a report that selects rows from the Customers and Orders tables: --
USE Northwind;

SELECT C.CustomerID, CompanyName, ContactName, City, O.OrderID, O.OrderDate 
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID;


--Task 2: Write a query that filters and sorts the results: --
SELECT C.CustomerID, CompanyName, ContactName, City, O.OrderID, O.OrderDate 
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
WHERE C.Country = 'UK'
ORDER BY CompanyName, OrderDate;


--Task 3: Write a query that includes rows from more than two tables: --
SELECT C.CustomerID, CompanyName, ContactName, City, O.OrderID, O.OrderDate, 
OD.ProductID, OD.Quantity
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS OD
ON O.OrderID = OD.OrderID
WHERE C.Country = 'UK'
ORDER BY CompanyName, OrderDate;

--Join products table: --
SELECT C.CustomerID, C.CompanyName, C.ContactName, C.City, O.OrderID, O.OrderDate, 
OD.ProductID, OD.Quantity, P.ProductID, P.ProductName
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS OD
ON O.OrderID = OD.OrderID
INNER JOIN dbo.Products AS P
ON OD.ProductID = P.ProductID
WHERE C.Country = 'UK'
ORDER BY C.CompanyName, O.OrderDate;