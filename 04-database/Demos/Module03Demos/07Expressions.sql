USE Northwind
GO

SELECT
	ProductID,
	ProductName,
	UnitsInStock + UnitsOnOrder AS FutureStock
FROM
	dbo.Products
WHERE
	--FutureStock > 100 --won't work!
	--use:
	(UnitsInStock + UnitsOnOrder) > 100