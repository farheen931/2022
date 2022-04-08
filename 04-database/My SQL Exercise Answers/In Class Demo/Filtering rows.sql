USE Northwind;

SELECT * FROM dbo.Customers
WHERE City = 'London' OR City = 'Paris' or City = 'Berlin';

--Alternative method--
SELECT * FROM dbo.Customers
WHERE City in ('London' , 'Paris' ,'Berlin');

--Not in method--
SELECT * FROM dbo.Customers
WHERE City not in ('London' , 'Paris' ,'Berlin');

--Products--
SELECT * FROM dbo.Products
WHERE UnitPrice = 18;

--Or & And--
SELECT * FROM dbo.Products 
WHERE (CategoryID = 7 or CategoryID = 8)
AND UnitPrice > 30;

--Orders--
SELECT * FROM dbo.Orders
WHERE OrderDate = '07/04/1996';

SELECT * FROM dbo.Orders
WHERE OrderDate = 'July 4 1996'; 

--Universal format: YYYYMMDD--
SELECT * FROM dbo.Orders
WHERE OrderDate = '1996/07/04';

--Employees--
SELECT * FROM dbo.Employees
WHERE Region is NULL;

SELECT * FROM dbo.Employees
WHERE Region is not NULL;

--Will return some null for place--
SELECT EmployeeID, City, Region, Country,
	City + ' ' + Region + ' ' + Country AS Place
	FROM dbo.Employees;

--Will not return some null for place--
SELECT EmployeeID, City, Region, Country,
	City + ' ' + ISNULL(Region, ' ') + ' ' + Country AS Place
	FROM dbo.Employees;

SELECT EmployeeID, City, Region, Country,
	City + ' ' + coalesce(Region, ' ') + ' ' + Country AS Place
	FROM dbo.Employees;

--Customers: Starts with--
SELECT * FROM dbo.Customers
WHERE City like 'L%'; --% means zero or more characters

SELECT * FROM dbo.Customers
WHERE City like 'L_'; --_ means exactly one character

SELECT * FROM dbo.Customers
WHERE City like 'L___'; --___ means 3 characters

SELECT * FROM dbo.Customers
WHERE City like 'L_%'; --_% means at least 1 or more characters

SELECT * FROM dbo.Customers
WHERE City like 'L[aeiou]%'; --[] any single char in the range 

SELECT * FROM dbo.Customers
WHERE City like 'L[a-e]%';

SELECT * FROM dbo.Customers
WHERE City like 'L[^a-e]%'; --^ = not an a-e

SELECT * FROM dbo.Customers
WHERE City not like 'L%'; --Anything not starting with an L