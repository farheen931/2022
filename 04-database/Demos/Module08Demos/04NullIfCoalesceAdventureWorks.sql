USE AdventureWorks2008R2
GO

--NullIf - VacationHours is not nullable
SELECT
	COUNT(*) AS Employees,
	AVG(VacationHours) AS IncludeZeros,
	AVG(NULLIF(VacationHours, 0)) AS IgnoreZeros
FROM
	HumanResources.Employee



--Coalesce (and IsNull) - MiddleName MIGHT be null
SELECT TOP 50
	ISNULL(Title + ' ', '') +
	COALESCE(
		FirstName + ' ' + MiddleName + ' ' + LastName,
		FirstName + ' ' + LastName) AS FormalName
FROM
	Person.Person
