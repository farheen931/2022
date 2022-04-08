--Union, Except and Intersect:--
USE Northwind;

--Union: --
SELECT CompanyName AS Name, City, Phone FROM dbo.Customers
UNION
SELECT CompanyName, City, Phone FROM dbo.Suppliers
UNION
SELECT LastName, City, HomePhone FROM dbo.Employees;


SELECT CompanyName, City, Phone, 'Customer' AS Type FROM dbo.Customers
UNION ALL 
SELECT CompanyName, City, Phone, 'Supplier' FROM dbo.Suppliers
UNION ALL
SELECT LastName, City, HomePhone, 'Employees' FROM dbo.Employees;
-- Doesn't sort them so employees are all the bottom
-- Union all shows duplicates between the tables


--Intersect:--
SELECT City, Country FROM dbo.Customers
INTERSECT
SELECT City, Country FROM dbo.Suppliers 
-- Cities in both customers and suppliers 
-- Can be rewritten as an inner join

SELECT DISTINCT C.City, C.Country
FROM dbo.Customers as C INNER JOIN dbo.Suppliers as S
ON C.City = S.City and C.Country = S.Country; -- Common between them


--Except: List of cities in customers table that isn't in suppliers --
SELECT City from dbo.Customers 
EXCEPT
Select City from dbo.Suppliers


SELECT DISTINCT C.City
FROM dbo.Customers AS C LEFT JOIN dbo.Suppliers AS S
ON C.City = S.City and C.Country = S.Country
WHERE S.City is NULL