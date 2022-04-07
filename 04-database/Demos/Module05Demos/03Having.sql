USE Northwind
GO

SELECT
	CategoryID,
	AVG(UnitPrice) AS CategoryAvg
FROM
	dbo.Products
GROUP BY
	CategoryID
HAVING
	AVG(UnitPrice) > 30
	
	
SELECT
	CategoryID,
	AVG(UnitPrice) AS CategoryAvg
FROM
	dbo.Products
GROUP BY
	CategoryID
HAVING
	CategoryID > 5