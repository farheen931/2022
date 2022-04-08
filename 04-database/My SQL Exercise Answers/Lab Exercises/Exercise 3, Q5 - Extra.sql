--Exercise 5: Filtering On Expressions--
USE Northwind;

--Task 1: Produce a report on products whose future stock value is greater than 2000. 
--Re-use the final query from Lab 2 Exercise 1 Task 3 but add an appropriate WHERE clause --
SELECT
 ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder,
 UnitPrice * UnitsInStock AS CurrentStockValue,
 (UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM
 dbo.Products
WHERE
 (UnitsInStock + UnitsOnOrder) * UnitPrice > 2000

