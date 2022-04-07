USE Northwind
GO

--Left:
SELECT
	LEFT(FirstName, 1) + '. ' +
	LastName AS Name
FROM
	dbo.Employees


--Upper:
SELECT
	UPPER(FirstName + ' ' + LastName) AS Name
FROM
	dbo.Employees



--SubString and CharIndex
SELECT
	FirstName,
	LastName,
	SUBSTRING(Notes, CHARINDEX('Ph.D', Notes, 0), 33) As Doctorate
FROM
	dbo.Employees
WHERE
	CHARINDEX('Ph.D', Notes, 0) <> 0