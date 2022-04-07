use AdventureWorks;
go

select City, CountryRegionName from HumanResources.vEmployee
intersect
select City, CountryRegionName from sales.vSalesPerson;


select City from HumanResources.vEmployee
except
select City from sales.vSalesPerson;

select City from sales.vSalesPerson
except
select City from HumanResources.vEmployee;