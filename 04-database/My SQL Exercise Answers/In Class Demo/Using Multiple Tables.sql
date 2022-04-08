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


