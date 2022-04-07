USE Northwind
GO


--IsNull:
SELECT
	emp.FirstName,
	emp.LastName,
	ISNULL(mgr.FirstName + ' ' + mgr.LastName, '**Head honcho**') AS Boss
FROM
	dbo.Employees AS emp
LEFT JOIN
	dbo.Employees AS mgr
ON
	emp.ReportsTo = mgr.EmployeeID
ORDER BY
	Boss

