--Exercise 1:--
USE Northwind;

--Task 1--
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0;

--Task 2--
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0 AND CategoryID = 1;

--Task 3--
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0 AND CategoryID = 1 AND UnitPrice >= 40;

--Optional:--
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0 AND (CategoryID = 1 OR CATEGORYID = 8) AND UnitPrice >= 40;