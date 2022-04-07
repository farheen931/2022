USE Northwind
GO

SELECT
	ProductID
FROM 
	dbo.Products
WHERE 
	UnitPrice > 100

EXCEPT

SELECT
	ProductID
FROM
	dbo.[Order Details]
GROUP BY
	ProductID
HAVING 
	SUM(Quantity) > 700



--Rewritten using a JOIN:
SELECT
	p.ProductID,
	p.UnitPrice,
	SUM(Quantity) AS TotalSold
FROM
	dbo.Products AS p
JOIN
	dbo.[Order Details] AS od
ON
	p.ProductID = od.ProductID
WHERE
	p.UnitPrice > 100
GROUP BY
	p.ProductID, p.UnitPrice
HAVING
	SUM(Quantity) <= 700