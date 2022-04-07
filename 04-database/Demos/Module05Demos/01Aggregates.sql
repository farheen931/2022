USE Northwind
GO

SELECT
	COUNT(*) AS TotalEmployees,
	COUNT(ReportsTo) AS TotalSubordinates,
	MIN(BirthDate) AS Oldest,
	MAX(Birthdate) AS Youngest,
	COUNT(DISTINCT Country) AS CountriesServed
FROM
	dbo.Employees
	

SELECT
	AVG(UnitPrice) AS AvgPrice,
	SUM(UnitsInStock * UnitPrice) AS ValueOfStock
FROM
	dbo.Products