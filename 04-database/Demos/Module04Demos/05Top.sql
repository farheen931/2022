USE Northwind
GO


SELECT TOP 10
	ProductName,
	UnitPrice
FROM
	dbo.Products
ORDER BY
	UnitPrice DESC


SELECT TOP 11 WITH TIES
	ProductName,
	UnitPrice
FROM
	dbo.Products
ORDER BY
	UnitPrice DESC