USE Northwind
GO

SELECT
	ProductID,
	ProductName,
	UnitsInStock, 
	UnitsOnOrder, 
	UnitsInStock + UnitsOnOrder
FROM
	Products


SELECT
	FirstName,
	LastName,
	FirstName + ' ' + LastName
FROM
	Employees