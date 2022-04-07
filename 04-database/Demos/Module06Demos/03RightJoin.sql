USE Northwind
GO

--This query only returns 49 rows.
SELECT
	t.TerritoryID,
	t.TerritoryDescription,
	et.EmployeeID
FROM
	dbo.Territories AS t
RIGHT JOIN
	dbo.EmployeeTerritories AS et
ON
	t.TerritoryID = et.TerritoryID



--This query returns all 53 rows:
SELECT
	t.TerritoryID,
	t.TerritoryDescription,
	et.EmployeeID
FROM
	dbo.EmployeeTerritories AS et
RIGHT JOIN
	dbo.Territories AS t
ON
	t.TerritoryID = et.TerritoryID