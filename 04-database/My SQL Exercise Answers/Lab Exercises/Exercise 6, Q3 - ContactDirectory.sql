-- Exercise 3: Create a telephone directory: --

--Task 1: Create a report that retrieves Customer contact details: --
USE Northwind;

SELECT CompanyName, ContactName, Phone FROM dbo.Customers

--Task 2: Create a report that retrieves Supplier contact details: --
USE Northwind;

SELECT CompanyName, ContactName, Phone FROM dbo.Customers

SELECT CompanyName, ContactName, Phone FROM dbo.Suppliers


--Task 3: Create a report that retrieves Employee Contact details: --

SELECT FirstName + ' ' + LastName, Extension FROM dbo.Employees


--Task 4: Combine the results using the UNION Operator: --
SELECT CompanyName, ContactName, Phone FROM dbo.Customers
UNION ALL 
SELECT CompanyName, ContactName, Phone FROM dbo.Suppliers
UNION ALL
SELECT 'Northwind Traders', FirstName + ' ' + LastName, Extension FROM dbo.Employees