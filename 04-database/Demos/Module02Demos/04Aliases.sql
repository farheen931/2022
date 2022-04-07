USE Northwind
GO

SELECT
	ProductID,
	ProductName,
	UnitsInStock, 
	UnitsOnOrder, 
	UnitsInStock + UnitsOnOrder AS FutureStock
FROM
	Products


SELECT
	FirstName AS GivenName,
	LastName AS FamilyName,
	FirstName + ' ' + LastName FullName
FROM
	Employees