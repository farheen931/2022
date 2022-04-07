USE Northwind
GO

SELECT
	t.TerritoryID,
	t.TerritoryDescription,
	et.EmployeeID,
	e.FirstName,
	e.LastName
FROM
	dbo.Territories AS t
LEFT JOIN
	dbo.EmployeeTerritories AS et
ON
	t.TerritoryID = et.TerritoryID
LEFT JOIN
	dbo.Employees AS e
ON
	e.EmployeeID = et.EmployeeID