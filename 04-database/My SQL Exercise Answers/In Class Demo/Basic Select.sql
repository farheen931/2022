use Northwind;

SELECT * FROM dbo.Employees;

SELECT FirstName, LastName FROM dbo.Employees;

SELECT FirstName + ' ' + LastName as [Full Name] FROM dbo.Employees;

SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, 
	unitprice * (UnitsInStock + UnitsOnOrder) AS SalesCalc FROM dbo.Products;

SELECT * FROM dbo.orders;