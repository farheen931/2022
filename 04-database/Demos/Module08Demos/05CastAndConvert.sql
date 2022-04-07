USE Northwind
GO

--Date types:
SELECT GETDATE(), 'DateTime'
SELECT CAST(GETDATE() AS date), 'Date'
SELECT CAST(GETDATE() AS time), 'Time'
SELECT CAST(GETDATE() AS datetime2), 'DateTime2'
SELECT CAST(GETDATE() AS datetimeoffset), 'DateTimeOffset'
SELECT CAST(GETDATE() AS smalldatetime), 'SmallDateTime'

--truncate text:
SELECT
	FirstName,
	LastName,
	CAST(Notes AS varchar(20)) AS Notes
FROM
	dbo.Employees



SELECT CONVERT(varchar(20), GETDATE(), 100)
SELECT CONVERT(varchar(20), GETDATE(), 101)
SELECT CONVERT(varchar(20), GETDATE(), 102)
SELECT CONVERT(varchar(20), GETDATE(), 103)
SELECT CONVERT(varchar(20), GETDATE(), 104)
SELECT CONVERT(varchar(20), GETDATE(), 105)
SELECT CONVERT(varchar(20), GETDATE(), 106)
SELECT CONVERT(varchar(20), GETDATE(), 107)
SELECT CONVERT(varchar(20), GETDATE(), 108)
SELECT CONVERT(varchar(20), GETDATE(), 109)
SELECT CONVERT(varchar(20), GETDATE(), 110)
SELECT CONVERT(varchar(20), GETDATE(), 111)
SELECT CONVERT(varchar(20), GETDATE(), 112)
SELECT CONVERT(varchar(20), GETDATE(), 113)
SELECT CONVERT(varchar(20), GETDATE(), 114)
SELECT CONVERT(varchar(20), GETDATE(), 115)