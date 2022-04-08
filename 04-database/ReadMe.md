Avanade Velocity 2022

# SQL Training

## Introduction to SQL
---
Text info

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
---

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
---

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
---
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
---
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
---
**Lab Exercise 3: Sorting Rows:**

```sql
-- Exercise 1: Basic ORDER by clauses: --

USE Northwind;

--Task 1: Create a report that only returns current products: --

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0;


--Task 2: Write a report that sorts current products by category: --
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0
ORDER BY CategoryID;

--Task 3: Write a report that sorts current products by category and unir price: --
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM dbo.Products
WHERE Discontinued = 0
ORDER BY CategoryID, UnitPrice DESC;

```

```sql
-- Exercise 2: Sorting on calculated columns: --

--Task 1: Re-use an existing query: --

USE	Northwind;

SELECT ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products;


-- Task 2: Write a report that sorts on a calculated column: Two ways: --

--First way:--
SELECT ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products
ORDER BY FutureStockValue DESC;

--Second way:--
SELECT ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products
ORDER BY ((UnitsOnOrder + UnitsInStock) * UnitPrice) DESC;

```

```sql
--Exercise 3: SELECT DISTINCT: --

--Task 1: Create a report that selects the customer's countries: --

USE Northwind;

SELECT Country 
FROM dbo.Customers;


--Task 2: Select distinct rows: --

SELECT DISTINCT Country 
FROM dbo.Customers;

```

```sql
--Exercise 4: SELECT TOP: --

--Task 1: Create a report of the top ten most expensive products: --

USE Northwind;

SELECT TOP 10 
	ProductID, ProductName, UnitPrice
FROM dbo.Products
ORDER BY UnitPrice DESC;

```

```sql
--Exercise 5: More TOPping:--

--Task 1: Modify Exercise 2 (Sorting on calculated columns), Task 2 to selecy only top 10 products based on current stock value

SELECT TOP 10 
	   ProductID, ProductName, UnitsOnOrder, 
	   (UnitPrice * UnitsInStock) AS CurrentStockValue, 
	   ((UnitsOnOrder + UnitsInStock) * UnitPrice) AS FutureStockValue 
FROM dbo.Products
ORDER BY CurrentStockValue DESC;

```

## Grouping and Aggregations
---
**Grouping and Aggregations: In Class Example:**

```sql
--Grouping and aggregation:--

USE Northwind;

--Aggregates:--

SELECT * FROM dbo.Orders;

SELECT SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders; 

SELECT COUNT(*) FROM dbo.Employees;

SELECT COUNT(Region) FROM dbo.Employees;

SELECT * FROM dbo.Customers;

SELECT COUNT(Country) FROM dbo.Customers; --Comes back with number in the country column

--To know how many countries: 
SELECT COUNT(DISTINCT Country) FROM dbo.Customers;

SELECT MIN(Companyname), MAX(Companyname)
FROM dbo.Customers; --Gives first and last alphabetically

SELECT MIN(Orderdate), MAX(Orderdate)
FROM dbo.Orders;  --Gives earliest and latest order

--GROUP BY:--

--Sum up these aggregates for each of the customers (sub total):--
--GROUP the tables and for each of these calculate these aggregates:--

SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
GROUP BY CustomerID; --For each customerID, these are thr aggregates


--ERROR WAY: Calculate for where freight is over 1000:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
WHERE SUM(Freight) >= 1000 --Results in error as you can't include sum in a where
GROUP BY CustomerID


--CORRECT WAY: Calculate for where freight is over 1000:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
GROUP BY CustomerID
HAVING SUM(Freight) >= 1000; --Filter with an aggregate, need to use HAVING


--Using HAVING and WHERE:--
SELECT CustomerId, SUM(Freight) AS F, AVG(COALESCE(Freight, 0)) as AvgF,
	   MIN(Freight) as MinF, MAX(Freight) as MaxF
FROM dbo.Orders
WHERE CustomerID like 'b%'
GROUP BY CustomerID
HAVING SUM(Freight) >= 1000; 

```

**Lab 4: Grouping and Aggregating:**

```sql
--Grouping and Aggregating:--

--Exercise 1: Basic Aggregates:--

--Task 1: Create a report that selects a count of row:--

USE Northwind;
SELECT COUNT(*) AS NumberOfOrders
FROM dbo.Orders;


--Task 2: Write a report that selects maximums and minimums:--
SELECT COUNT(*) AS NumberOfOrders, 
MIN(OrderDate) AS EarliestOrder, 
MAX(OrderDate) AS LatestOrder
FROM dbo.Orders;


--Task 3: Write a report that selects aggregates for one employee: --
SELECT COUNT(*) AS NumberOfOrders, 
MIN(OrderDate) AS EarliestOrder, 
MAX(OrderDate) AS LatestOrder
FROM dbo.Orders
WHERE EmployeeID = 1;

```

```sql
--Exercise 2: Grouping aggregates: --

--Task 1: Create a query that counts orders: --
USE Northwind;

SELECT COUNT(OrderID) AS NumberOfOrders
FROM dbo.Orders;


--Task 2: Write a report that groups based on customer's ID: --
SELECT CustomerID, COUNT(OrderID) AS NumberOfOrders
FROM dbo.Orders
GROUP BY CustomerID;


--Task 3: Write a repoty that sorts otder counts in descending order: --
SELECT CustomerID, COUNT(OrderID) AS NumberOfOrders
FROM dbo.Orders
GROUP BY CustomerID
ORDER BY NumberOfOrders DESC;

```

```sql
--Exercise 3: Aggregating calculated values and filtering aggregates: --

--Task 1: Create a report that sums quantities of products sold: --
USE Northwind;

SELECT ProductID, SUM(Quantity) AS TotalSold
FROM dbo.[Order Details]
GROUP BY ProductID;


--Task 2: Create a report that sums a calculation:--
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue
FROM dbo.[Order Details]
GROUP BY ProductID
ORDER BY TotalValue DESC;


--Task 3: Create a report that filters aggregate values: --
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue
FROM dbo.[Order Details]
GROUP BY ProductID
HAVING SUM(Quantity * UnitPrice) <= 5000 --Column TotalValue doesn't exist yet for ORDER BY so need to use calculation for it
ORDER BY TotalValue DESC;

```
---
## Using Multiple Tables
---
**Using multiple tables: In class example: JOIN:**

```sql
USE Northwind;

--Inner join: Only customers that have orders: --
SELECT CompanyName, OrderDate
FROM dbo.Customers INNER JOIN dbo.Orders
ON dBO.Customers.CustomerID = dbo.Orders.CustomerID

--Use alias: Gives 830 customers --
SELECT C.CompanyName, O.OrderDate
FROM dbo.Customers as C INNER JOIN dbo.Orders as O
ON C.CustomerID = O.CustomerID

--Left outer join: Gives 832 customers--
SELECT C.CompanyName, O.OrderDate
FROM dbo.Customers as C LEFT OUTER JOIN dbo.Orders as O
ON C.CustomerID = O.CustomerID

--Right outer join: Gives 830 orders--
SELECT C.CompanyName, O.OrderDate
FROM dbo.Customers as C RIGHT OUTER JOIN dbo.Orders as O
ON C.CustomerID = O.CustomerID

--Full outer join: Gives 832 orders--
SELECT C.CompanyName, O.OrderDate
FROM dbo.Customers as C FULL JOIN dbo.Orders as O
ON C.CustomerID = O.CustomerID

SELECT * FROM dbo.Customers; --91 ROWS
SELECT * FROM dbo.Orders; -- 830 ROWS

--Cross join OR Cartesian product: Gives 91 * 830 = 75,530 ROWS --
SELECT C.CompanyName, O.OrderDate
FROM dbo.Customers as C CROSS JOIN dbo.Orders as O


--More than two tables:--
SELECT P.ProductName, C.CompanyName, O.OrderDate, OD.Quantity, OD.UnitPrice
FROM dbo.Customers as C LEFT OUTER JOIN dbo.Orders as O
ON C.CustomerID = O.CustomerID
						LEFT OUTER JOIN dbo.[Order Details] as OD
ON O.OrderID = OD.OrderID
						LEFT OUTER JOIN dbo.Products as P
ON OD.ProductID = P.ProductID;


--Self join: Tables referring to themselves --
SELECT * FROM dbo.Employees;

SELECT E.FirstName as Employee, M.FirstName as Manager
FROM dbo.Employees as E INNER JOIN dbo.Employees as M -- Doesn't show Andrew as he doesn't have manager (null) so do left outer join
ON E.ReportsTo = M.EmployeeID

SELECT E.FirstName as Employee, M.FirstName as Manager
FROM dbo.Employees as E LEFT OUTER JOIN dbo.Employees as M -- Now shows Andrew
ON E.ReportsTo = M.EmployeeID

```
**Using multiple tables: In class example: UNION, INTERSECT, EXCEPT:**

```sql
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

```

**Lab 5: Adding tables:**

```sql
--Exercise 1: Join Fundamentals: --

--Task 1: Create a report that selects rows from the Customers and Orders tables: --
USE Northwind;

SELECT C.CustomerID, CompanyName, ContactName, City, O.OrderID, O.OrderDate 
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID;


--Task 2: Write a query that filters and sorts the results: --
SELECT C.CustomerID, CompanyName, ContactName, City, O.OrderID, O.OrderDate 
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
WHERE C.Country = 'UK'
ORDER BY CompanyName, OrderDate;


--Task 3: Write a query that includes rows from more than two tables: --
SELECT C.CustomerID, CompanyName, ContactName, City, O.OrderID, O.OrderDate, 
OD.ProductID, OD.Quantity
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS OD
ON O.OrderID = OD.OrderID
WHERE C.Country = 'UK'
ORDER BY CompanyName, OrderDate;

--Join products table: --
SELECT C.CustomerID, C.CompanyName, C.ContactName, C.City, O.OrderID, O.OrderDate, 
OD.ProductID, OD.Quantity, P.ProductID, P.ProductName
FROM dbo.Customers AS C 
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS OD
ON O.OrderID = OD.OrderID
INNER JOIN dbo.Products AS P
ON OD.ProductID = P.ProductID
WHERE C.Country = 'UK'
ORDER BY C.CompanyName, O.OrderDate;

```

```sql
--Exercise 2: Investigate outer joins: --

--Task 1: Create a query that counts customers: --
USE Northwind;

SELECT COUNT(*) FROM dbo.Customers;

--Task 2: Write a report that groups orders based on the customer's name: --
USE Northwind;

SELECT C.CompanyName, COUNT(O.OrderID) AS NumOrders
FROM dbo.Customers AS C
INNER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.CompanyName
ORDER BY NumOrders;


--Task 3: Write a report that uses left and right outer joins--
SELECT C.CompanyName, 
COUNT(O.OrderID) AS NumOrders, 
MIN(O.OrderDate) AS MinDate
FROM dbo.Customers AS C
LEFT OUTER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.CompanyName
ORDER BY NumOrders;

SELECT C.CompanyName, COUNT(O.OrderID) AS NumOrders
FROM dbo.Customers AS C
RIGHT OUTER JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.CompanyName
ORDER BY NumOrders;

```
```sql
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

```
---
## Subqueries 
---
**Subqueries: In Class Example:**
```sql
--Subqueries:--

USE Northwind;

--WON'T WORK:--
SELECT * FROM dbo.Orders
HAVING Freight > AVG(Freight);


--WILL WORK BUT WILL ALWAYS HAVE TO RUN FIRST QUERY WHEN UPDATED:--
SELECT AVG(Freight) FROM dbo.Orders; --Calculate freight avg first--

SELECT * FROM dbo.Orders
WHERE Freight > 78.2442

--Subquery/Nested query (self contained):--
SELECT * FROM dbo.Orders
WHERE Freight > (SELECT AVG(Freight) FROM dbo.Orders);

--Correlated: Inner query relies on outer query --
SELECT * FROM dbo.Categories
SELECT * FROM dbo.Products

--How many products in each category? --
SELECT COUNT(*) FROM dbo.Products
WHERE CategoryID = 1; -- Will have to keep changing the categoryID

--One query to calculate the products in each category:
-- CategoryID  CategoryName  numProds:

SELECT C.CategoryID, C.CategoryName, 
		(
			SELECT COUNT(P.ProductID) FROM dbo.Products as P
			WHERE P.CategoryID = C.CategoryID --Filter Categoryid from Category table with CategoryId from Products table
		) AS numProds
FROM dbo.Categories as C

--Rewritten as a join: Inner join:--

SELECT  C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS NumProds
FROM dbo.Categories AS C INNER JOIN dbo.Products AS P
ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryID, C.CategoryName;

---
INSERT INTO dbo.Categories(CategoryName,Description)
VALUES ('Various', 'Other Food');

```
---

## Transactions and Isolation
---
**Transactions: In Class Example, building upon Modifying Tables example:**

```sql
---Developing upon Modify Tables Example:--

BEGIN TRAN
	truncate table dbo.workers;
	DELETE dbo.Workers;

	SELECT * FROM dbo.Workers;

	INSERT INTO dbo.Workers (fname, Info)
	VALUES ('Dennis', 'Bit of a menace');

	SELECT * FROM dbo.Workers;

ROLLBACK TRAN;

```


```sql
---XACT_ABORT ON---

USE Northwind;

CREATE TABLE tab1
(
	a INT CHECK (a < 5) --Can only have less than 5
);

SET XACT_ABORT ON;
BEGIN TRAN
	INSERT INTO tab1 VALUES(1);
	INSERT INTO tab1 VALUES(3);
	INSERT INTO tab1 VALUES(10); --Error
COMMIT TRAN

SELECT * FROM tab1;

TRUNCATE table tab1;
```
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
---
**Lab 9: Table Manipulation:**

```sql
--Exercise 1: String Functions: --

--Task 1: Add a new database: --

CREATE DATABASE NewDB
GO

USE NewDB
GO

--Task 2: Add a table: --
CREATE TABLE dbo.Payments(
RowID          INT           IDENTITY(1,1) PRIMARY KEY,
PaymentRef     INT,
CustomerRef    VARCHAR(10),
PaymentDT      DATETIME,
PaymentAmount  MONEY
)
GO

--Table currently has no values except the columns: --
SELECT * FROM dbo.Payments
GO

--Task 3: Add data to the new table: --
INSERT INTO dbo.Payments VALUES (1001,'CR001','2019-10-01T04:50:00',900.00)
INSERT INTO dbo.Payments VALUES (1002,'CR002','2019-10-01T07:13:00',234.00)
INSERT INTO dbo.Payments VALUES (1003,'CR003','2019-10-01T08:59:00',352.00)
INSERT INTO dbo.Payments VALUES (1004,'CR001','2019/10/01 09:12:00',617.00)
INSERT INTO dbo.Payments VALUES (1005,'CR004','2019-10-01T09:16:00',778.00)
INSERT INTO dbo.Payments VALUES (0,'ERROR','1753-01-01T00:00:00',0.00)
GO

--Summarising rows of data by payment date: --
SELECT PaymentDT , count(*) AS NumberRows,
sum(PaymentAmount) AS TotalPaid 
FROM dbo.Payments
GROUP BY PaymentDT
GO --The query does not summarize by date due to the column holding the time as well. --


--Exercise 2: Adding columns: --

--Task 1: Create a query that filters by year: --

ALTER TABLE dbo.Payments
ADD PaymentDate DATE
GO

SELECT * FROM dbo.Payments
GO --Note that the value for PaymentDate is currently null--

--Update the rows to fill the PaymentDate Column calculated from the Payment DT column: --
UPDATE dbo.Payments
SET PaymentDate = CONVERT(DATE, PaymentDT)
GO

--Review the PaymentDate column: --

SELECT * FROM dbo.Payments
GO
SELECT PaymentDate , count(*) AS NumberRows, 
sum(PaymentAmount) AS TotalPaid 
FROM dbo.Payments
GROUP BY PaymentDate
GO

--Exercise 3: Cleaning the data: --

--Task 1: Remove the rows with errors: --

DELETE FROM dbo.Payments
WHERE PaymentRef = 0
GO

SELECT * FROM dbo.Payments
GO
SELECT PaymentDate , count(*) AS NumberRows, 
sum(PaymentAmount) AS TotalPaid 
FROM dbo.Payments
GROUP BY PaymentDate
GO

--Task 2: Removing the table: --

DROP TABLE dbo.Payments
GO

```
