-- Exercise 2: Sorting on calculated columns: --

--Task 1: Re-use an existing query: --

USE	Northwind;

SELECT ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products;

-- Task 2: Write a report that sorts on a calculated column: Two ways: --
--First way:--
SELECT ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products
ORDER BY FutureStockValue DESC;

--Second way:--
SELECT ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products
ORDER BY ((UnitsOnOrder + UnitsInStock) * UnitPrice) DESC;