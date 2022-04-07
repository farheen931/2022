Avanade Velocity 2022

# SQL Training

## Introduction to SQL
---

## Retreiving Data
---
**Basic Select:**

``` sql
USE Northwind; 

SELECT * FROM dbo.Employees;

SELECT FirstName, LastName FROM dbo.Employees;

SELECT FirstName + ' ' + LastName as [Full Name] FROM dbo.Employees;

SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, unitprice * (UnitsInStock + UnitsOnOrder) AS SalesCalc FROM dbo.Products;

SELECT * FROM dbo.orders;
```

**Lab 1: Retreving Data**

```sql
---Exercise 1: Retrieve data by using the SELECT statement---

use Northwind;

--Task 1: Create a report using SELECT * --
SELECT * FROM dbo.Products;


--Task 2: Create a report that selects individual columns from a table --

use Northwind;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM dbo.Products;

--Task 3: Create a report that selects individual columns from a table --

SELECT ProductID, ProductName, UnitsOnOrder, (UnitPrice * UnitsInStock) AS 
	CurrentStockValue, ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS
	FutureStockValue FROM dbo.Products;

```
```sql
--Exercise 2: Concatenate strings in a select list --

SELECT FirstName + ' ' + LastName AS Fullname, Extension FROM dbo.Employees;

```


## Filtering Rows
---

**Filtering rows: In class example:**

```sql
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

```

**Lab 2: Filtering Rows:**

```sql
--Exercise 1: Basic WHERE clauses--

USE Northwind;

--Task 1: Create a report that only returns current products --

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0;


--Task 2: Write a report that only returns current products in category 1 --

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0 AND CategoryID = 1;


--Task 3: Write a report that only returns expensive, current products in category 1 --

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0 AND CategoryID = 1 AND UnitPrice >= 40;


--Optional: Modify the expensive products query from Exercise 1 so that it looks for current products in both category 1 and category 8: --

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0 AND (CategoryID = 1 OR CATEGORYID = 8) AND UnitPrice >= 40;

```
```sql
--Exercise 2: Using IN and BETWEEN--
USE Northwind;

--Task 1: Create a report that only returns orders for some customers --

SELECT OrderID, CustomerID, OrderDate
FROM dbo.Orders
WHERE CustomerID = 'ALFKI' OR CustomerID =  'ERNSH' OR CustomerID = 'SIMOB';


--Task 2: Write a report that returns orders for some customers in August 1997 --
SELECT OrderID, CustomerID, OrderDate
FROM dbo.Orders
WHERE (CustomerID = 'ALFKI' OR CustomerID =  'ERNSH' OR CustomerID = 'SIMOB')
AND (OrderDate >= '1 Aug 1997' AND OrderDate <= '31 Aug 1997');


--Task 3: Ensure that the query uses IN and BETWEEN --

SELECT OrderID, CustomerID, OrderDate
FROM dbo.Orders
WHERE CustomerID in ('ALFKI','ERNSH','SIMOB')
AND OrderDate BETWEEN '19970801' AND '19970831';


--Optional:--
SELECT OrderID, CustomerID, OrderDate, EmployeeID
FROM dbo.Orders
WHERE OrderDate BETWEEN '19970601' AND '19970831'
AND EmployeeID in (1,3,5,7,9);

```
```sql
--Exercise 3: String comparisons:--
USE Northwind;

--Task 1: Create a report that only returns contact details for some customers:--

SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM dbo.Customers
WHERE ContactTitle like 'sales%';


--Task 2: Use leading and trailing wildcards--
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM dbo.Customers
WHERE ContactTitle like '%sales%'; --Appears anywhere in the title--


--Task 3: Investigate case sensitivity in SQL Server --
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM dbo.Customers
WHERE ContactTitle like '%sAles%';

```
```sql
--Exercise 4: NULL Comparisons: --

Use Northwind;

--Task 1: Create a report that only lists customers with no fax number listed: --
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone, Fax
FROM dbo.Customers
WHERE Fax IS NULL;


--Optional: Try using an “= NULL” comparison: --
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone, Fax
FROM dbo.Customers
WHERE Fax = NULL;

```

```sql
--Exercise 5: Filtering on expressions: --

USE Northwind;

--Task 1: Produce a report on products whose future stock value is greater than 2000. Re-use the final query from Lab 2 Exercise 1 Task 3 but add an appropriate WHERE clause:--

SELECT
 ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder,
 UnitPrice * UnitsInStock AS CurrentStockValue,
 (UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM
 dbo.Products
WHERE
 (UnitsInStock + UnitsOnOrder) * UnitPrice > 2000

```
## Sorting Rows
---

**Sorting rows: In class example:**

```sql
USE Northwind;

SELECT * FROM dbo.Customers; --Comes back order of first column

/*Can have up to 16 items to order by*/

--Order by country:
SELECT * FROM dbo.Customers
ORDER BY Country;

SELECT * FROM dbo.Customers
ORDER BY Country DESC;

SELECT * FROM dbo.Customers
ORDER BY Country DESC, City Asc; 

SELECT * FROM dbo.Customers
ORDER BY City DESC, Country Asc; -- Sort cities first and then countries

--Order by numbers--
SELECT * FROM dbo.Customers
ORDER BY 2; --Order by column 2 = REALLY BAD PRACTICE as column orders can change

--Ordering by alias
SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, 
	unitprice * (UnitsInStock + UnitsOnOrder) AS SalesCalc 
	FROM dbo.Products
	/*WHERE SalesCalc > 1000* = Can't use alias for where*/ 
	WHERE unitprice * (UnitsInStock + UnitsOnOrder) > 1000
	ORDER BY SalesCalc;

--Using DISTINCT--
SELECT Country 
FROM dbo.Customers --Gives duplicates

SELECT DISTINCT Country 
FROM dbo.Customers

SELECT *
FROM dbo.Orders;

--Interested in first 5:--
SELECT TOP 5 *
FROM dbo.Orders;

--Bottom 5: All about the order--
SELECT TOP 5 *
FROM dbo.Orders
ORDER BY OrderID DESC;

--By Freight:--
SELECT TOP 5 *
FROM dbo.Orders
ORDER BY Freight DESC;

--By %:--
SELECT TOP 5 PERCENT *
FROM dbo.Orders
ORDER BY OrderID DESC;

```

## Grouping and Aggregations
---

## Using Multiple Tables
---

## Subqueries 
---

## Transactions and Isolation
---

## Modifying data
---
**Creating tables and modifying them: In class example:**

```sql
USE Northwind;

CREATE TABLE dbo.Workers
(
	wID     int          NOT NULL  primary key identity(1,1),
	fname   varchar(30)  NOT NULL,
	Info    varchar(100) NULL
);

INSERT INTO dbo.Workers(fname, Info)
VALUES ('Fred', 'Bit of an idiot');

SELECT * FROM dbo.Workers;


--Mulitple entries:--
INSERT INTO dbo.Workers(fname, Info)
VALUES ('Doris', 'Very old'),
	   ('Ethel', 'Even Older'),
	   ('George', 'Very ancient');

INSERT INTO dbo.Workers(fname)
	SELECT FirstName
	FROM dbo.Employees; --Inserting the names from employees into workers table


--Update dbo.workers:--
UPDATE dbo.Workers	
	SET Info = 'Nothing to say'
	WHERE Info is Null;

UPDATE dbo.Workers	
	SET  fname = 'Freddy', Info = 'Nice person'
	WHERE wID = 1;


--Delete from table:--
DELETE dbo.Workers
WHERE wID = 4;


--Adding someone new to test if it changes ID:--
INSERT INTO dbo.Workers(fname, Info)
VALUES ('Kasra', 'Very helpful'); --Doesn't backfill--


--Replacing id 4:--

SET IDENTITY_INSERT dbo.workers on 
INSERT INTO dbo.Workers(wid, fname, Info)
VALUES (4, 'Boris', 'Funny hair'); 

SELECT * FROM dbo.Workers;

SET IDENTITY_INSERT dbo.workers on 

```

