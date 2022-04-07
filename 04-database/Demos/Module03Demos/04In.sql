USE Northwind
GO

SELECT
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice
FROM
	dbo.Products
WHERE
	(CategoryID = 7 OR CategoryID = 8)
	AND UnitPrice > 30



SELECT
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice
FROM
	dbo.Products
WHERE
	CategoryID IN (7, 8)
	AND UnitPrice > 30