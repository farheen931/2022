use AdventureWorks;
go

select LastName, PhoneNumber, City, CountryRegionName, 'Customer' as Type from sales.vIndividualCustomer
union
select LastName, PhoneNumber, City, CountryRegionName, 'Employee' from HumanResources.vEmployee
union
select LastName, PhoneNumber, City, CountryRegionName, 'Sales' from sales.vSalesPerson;


select LastName, PhoneNumber, City, CountryRegionName from sales.vIndividualCustomer
union all
select LastName, PhoneNumber, City, CountryRegionName from HumanResources.vEmployee
union all
select LastName, PhoneNumber, City, CountryRegionName from sales.vSalesPerson;