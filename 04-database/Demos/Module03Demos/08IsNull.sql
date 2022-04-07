USE Northwind
GO

--this might work, but probably won't
SELECT
	CompanyName, Phone,
	Fax
FROM
	dbo.Suppliers
WHERE
	Fax = NULL


--this will definitely work
SELECT
	CompanyName, Phone,
	Fax
FROM
	dbo.Suppliers
WHERE
	Fax IS NULL