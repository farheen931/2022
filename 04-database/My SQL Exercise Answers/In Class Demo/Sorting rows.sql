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



