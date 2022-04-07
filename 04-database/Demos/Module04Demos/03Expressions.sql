USE Northwind
GO

SELECT
	ProductName,
	UnitsInStock,
	UnitsOnOrder,
	UnitsInStock + UnitsOnOrder AS FutureStock
FROM
	dbo.Products
ORDER BY
	FutureStock DESC