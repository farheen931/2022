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
