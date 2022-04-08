--Exercise 4: SELECT TOP: --

--Task 1: Create a report of the top ten most expensive products: --

USE Northwind;

SELECT TOP 10 
	ProductID, ProductName, UnitPrice
FROM dbo.Products
ORDER BY UnitPrice DESC;

--Exercise 5: More TOPping:--

--Task 1: Modify Exercise 2 (Sorting on calculated columns), Task 2 to selecy only top 10 products based on current stock value

SELECT TOP 10 
	   ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products
ORDER BY CurrentStockValue DESC;