--Exercise 4:--
Use Northwind;

--Task 1:--
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone, Fax
FROM dbo.Customers
WHERE Fax IS NULL;

--Optional:--
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone, Fax
FROM dbo.Customers
WHERE Fax = NULL;