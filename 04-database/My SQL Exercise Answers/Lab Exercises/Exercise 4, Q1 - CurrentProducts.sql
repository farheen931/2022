-- Exercise 1: Basic ORDER by clauses: --

USE Northwind;

--Task 1: Create a report that only returns current products: --

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0;


--Task 2: Write a report that sorts current products by category: --
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0
ORDER BY CategoryID;

--Task 3: Write a report that sorts current products by category and unir price: --
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0
ORDER BY CategoryID, UnitPrice DESC;

