USE Northwind
GO

EXEC dbo.[Ten Most Expensive Products]





EXEC dbo.SalesByCategory 'Beverages', 1996




EXEC dbo.SalesByCategory @CategoryName = 'Beverages', @OrdYear = '1996'