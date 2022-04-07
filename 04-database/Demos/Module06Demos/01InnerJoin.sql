USE Northwind
GO

SELECT
	Products.CategoryID,
	CategoryName,
	ProductID,
	ProductName
FROM
	dbo.Products
INNER JOIN
	dbo.Categories
ON
	Products.CategoryID = Categories.CategoryID



SELECT
	p.CategoryID,
	CategoryName,
	ProductID,
	ProductName
FROM
	dbo.Products AS p
JOIN
	dbo.Categories AS c
ON
	p.CategoryID = c.CategoryID



SELECT
	p.CategoryID,
	c.CategoryName,
	p.ProductID,
	p.ProductName
FROM
	dbo.Products AS p
JOIN
	dbo.Categories AS c
ON
	p.CategoryID = c.CategoryID