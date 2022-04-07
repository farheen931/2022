USE Northwind
GO

SELECT
	CategoryName,
	ProductName
FROM
	dbo.Products AS p
JOIN
	dbo.Categories AS c
ON
	p.CategoryID = c.CategoryID
WHERE
	p.Discontinued = 0
ORDER BY
	CategoryName,
	ProductName



SELECT
	CategoryName,
	ProductName
FROM
	dbo.[Products by Category]
ORDER BY
	CategoryName,
	ProductName
