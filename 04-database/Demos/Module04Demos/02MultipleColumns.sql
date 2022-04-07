USE Northwind
GO


SELECT
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice
FROM
	dbo.Products
ORDER BY
	CategoryID,
	UnitPrice DESC




--not such a great idea, visually hard to see how it's been sorted...
SELECT
	ProductID,
	ProductName,
	--CategoryID,
	UnitPrice
FROM
	dbo.Products
ORDER BY
	CategoryID,
	UnitPrice DESC