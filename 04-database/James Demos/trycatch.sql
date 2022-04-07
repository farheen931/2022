use AdventureWorks;
go

--print 1./0;

begin try
	print 1./0
end try
begin catch
	print 'It failed. Divide by zero is an illegal operation. The police have been called';
	select ERROR_MESSAGE(),ERROR_SEVERITY();
end catch