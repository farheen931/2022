use Northwind;

--Task  2--
SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM dbo.Products;

--Task 3--
SELECT ProductID, ProductName, UnitsOnOrder, (UnitPrice * UnitsInStock) AS 
	CurrentStockValue, ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS
	FutureStockValue FROM dbo.Products;

--Exercise 2--
SELECT FirstName + ' ' + LastName AS Fullname, Extension FROM dbo.Employees;
