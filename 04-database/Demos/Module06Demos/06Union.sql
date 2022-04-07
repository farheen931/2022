USE Northwind
GO

SELECT
	ProductID
FROM
	dbo.[Order Details]
GROUP BY
	ProductID
HAVING
	SUM(Quantity) > 700

UNION

SELECT
	ProductID
FROM 
	dbo.Products
WHERE 
	UnitPrice > 100


--UNION ALL "don't bother removing duplicates"
SELECT
	ProductID
FROM
	dbo.[Order Details]
GROUP BY
	ProductID
HAVING
	SUM(Quantity) > 700

UNION ALL

SELECT
	ProductID
FROM 
	dbo.Products
WHERE 
	UnitPrice > 100