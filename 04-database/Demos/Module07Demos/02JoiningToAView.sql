USE Northwind
GO

SELECT
	p.ProductID,
	p.ProductName,
	SUM(Quantity) AS TotalSales
FROM
	dbo.[Current Product List] AS p
JOIN
	dbo.[Order Details] AS od
ON
	p.ProductID = od.ProductID
GROUP BY
	p.ProductID, p.ProductName