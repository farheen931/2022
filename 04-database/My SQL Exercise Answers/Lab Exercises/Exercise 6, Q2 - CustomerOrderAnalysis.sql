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


