USE Northwind
GO


SELECT
	ProductName,
	UnitPrice
FROM
	dbo.Products
ORDER BY
	UnitPrice --ASC


SELECT
	ProductName,
	UnitPrice
FROM
	dbo.Products
ORDER BY
	UnitPrice DESC