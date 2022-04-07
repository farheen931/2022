USE Northwind
GO

SELECT
	emp.FirstName,
	emp.LastName,
	mgr.FirstName + ' ' + mgr.LastName AS Boss
FROM
	dbo.Employees AS emp
JOIN
	dbo.Employees AS mgr
ON
	emp.ReportsTo = mgr.EmployeeID