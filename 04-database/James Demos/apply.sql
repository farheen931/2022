use AdventureWorks;
go

select * from Production.Product;

select * from dbo.GetProductByColour('silver');

select P.ProductID, P.Name,PBC.subcategory
from Production.Product as P
	outer apply dbo.GetProductByColour(P.color) as PBC