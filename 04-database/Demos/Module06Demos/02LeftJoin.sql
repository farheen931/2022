USE Northwind
GO

SELECT
	t.TerritoryID,
	t.TerritoryDescription,
	et.EmployeeID
FROM
	dbo.Territories AS t
LEFT JOIN
	dbo.EmployeeTerritories AS et
ON
	t.TerritoryID = et.TerritoryID