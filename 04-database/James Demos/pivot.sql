use AdventureWorks;
go

alter view sales.CategoryQtyYear
as
SELECT  c.Name AS Category,
        od.OrderQty AS Qty,
        YEAR(o.orderdate) AS Orderyear,
		month(o.orderdate) as Ordermonth
FROM    Production.ProductCategory AS c 
		INNER JOIN Production.ProductSubcategory as ps on c.ProductCategoryID = ps.ProductSubcategoryID
        INNER JOIN Production.Product AS p ON ps.ProductSubcategoryID =p.ProductSubcategoryID
        INNER JOIN Sales.SalesOrderDetail AS od ON p.productid=od.productid
        INNER JOIN Sales.SalesOrderHeader AS o ON od.SalesOrderID=o.SalesOrderID;
go

select Category, Qty, Orderyear from sales.CategoryQtyYear;

select Category, [2005],[2006],[2007],[2008]
from	
(
	select Category, Qty, Orderyear from sales.CategoryQtyYear

) as C
pivot 
(
	sum(qty) for orderyear in ([2005],[2006],[2007],[2008])
) as pvt



--

with C
as
(
	select Category, Qty, Orderyear from sales.CategoryQtyYear
)
select Category, [2005],[2006],[2007],[2008]
from C
pivot 
(
	sum(qty) for orderyear in ([2005],[2006],[2007],[2008])
) as pvt;


CREATE TABLE [Sales].[PivotedCategorySales](
	[Category] [nvarchar](15) NOT NULL,
	[2006] [int] NULL,
	[2007] [int] NULL,
	[2008] [int] NULL);
GO
-- Populate it by pivoting from view
INSERT INTO Sales.PivotedCategorySales (Category, [2006],[2007],[2008])
SELECT Category, [2006],[2007],[2008] 
FROM (SELECT  Category, Qty, Orderyear FROM Sales.CategoryQtyYear) AS D 
    PIVOT(SUM(QTY) FOR orderyear IN ([2006],[2007],[2008]))AS p

select Category, coalesce([2006],0) as [2006], [2007], [2008] 
from sales.PivotedCategorySales;

SELECT category, qty, orderyear
FROM (select Category, coalesce([2006],0) as [2006], [2007], [2008] 
			from sales.PivotedCategorySales) as C
UNPIVOT(qty FOR orderyear IN([2006],[2007],[2008])) AS unpvt;