USE Northwind
GO

SELECT
	FirstName,
	LastName,
	Title
FROM
	dbo.Employees
WHERE
	Title LIKE 'Sales%'



SELECT
	FirstName,
	LastName,
	Title
FROM
	dbo.Employees
WHERE
	Title LIKE '%sales%'