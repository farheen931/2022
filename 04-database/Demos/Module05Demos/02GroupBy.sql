USE Northwind
GO

--Results in a single value
SELECT
	AVG(UnitPrice)
FROM
	dbo.Products
	
--Results in a number of values
SELECT DISTINCT
	CategoryID
FROM
	dbo.Products

--Tells me the avergae UnitPrice for one Category
SELECT
	AVG(UnitPrice)
FROM
	dbo.Products
WHERE
	CategoryID = 1	


SELECT
	CategoryID,
	AVG(UnitPrice)
FROM
	dbo.Products
GROUP BY
	CategoryID
	
	
SELECT
	CategoryID,
	AVG(UnitPrice)
FROM
	dbo.Products
GROUP BY
	CategoryID
ORDER BY 2 DESC