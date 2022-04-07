USE Northwind
GO

--GetDate and GetUTCDate
SELECT
	GetDate(),
	GETUTCDATE()


--DateAdd
SELECT
	DATEADD(day, 7, GETDATE()) AS NextWeek

--DateDiff
SELECT
	FirstName,
	LastName,
	DATEDIFF(year, BirthDate, GETDATE()) AS Age
FROM
	Employees


--Date Formats...
SELECT
	DATEPART(month, '04/01/1973') AS UK,
	DATEPART(month, '01/04/1973') AS US,
	DATEPART(month, '04 Jan 1973') AS SpellMonth,
	DATEPART(month, '1973/01/04') AS [Y/M/D],
	DATEPART(month, '19730104') AS YMD