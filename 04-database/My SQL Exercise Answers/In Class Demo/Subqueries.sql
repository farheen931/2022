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