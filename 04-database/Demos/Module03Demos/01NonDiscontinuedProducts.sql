USE Northwind
GO

SELECT
	ProductID,
	ProductName,
	UnitsInStock,
	UnitsOnOrder
FROM
	dbo.Products
WHERE
	Discontinued = 0