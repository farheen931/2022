--Exercise 3:--
USE Northwind;

--Task 1:--
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM dbo.Customers
WHERE ContactTitle like 'sales%';

--Task 2:--
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM dbo.Customers
WHERE ContactTitle like '%sales%'; --Appears anywhere in the title--

--Task 3:--
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM dbo.Customers
WHERE ContactTitle like '%sAles%';