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
