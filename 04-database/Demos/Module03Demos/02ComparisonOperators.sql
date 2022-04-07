USE Northwind
GO

SELECT
	FirstName,
	LastName,
	City
FROM
	dbo.Employees
WHERE
	Country = 'UK'



SELECT
	ProductID,
	ProductName,
	UnitPrice
FROM
	dbo.Products
WHERE
	UnitPrice > 100