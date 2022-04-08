--Exercise 3: SELECT DISTINCT: --

--Task 1: Create a report that selects the customer's countries: --

USE Northwind;

SELECT Country 
FROM dbo.Customers;


--Task 2: Select distinct rows: --

SELECT DISTINCT Country 
FROM dbo.Customers;