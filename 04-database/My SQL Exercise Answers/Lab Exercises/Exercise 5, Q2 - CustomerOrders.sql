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