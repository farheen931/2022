USE Northwind
GO

SELECT
	ProductID,
	ProductName,
	UnitPrice
FROM
	dbo.Products
WHERE
	UnitPrice >= 35
	AND UnitPrice <= 40
	
	
SELECT
	ProductID,
	ProductName,
	UnitPrice
FROM
	dbo.Products
WHERE
	UnitPrice BETWEEN 35 AND 40