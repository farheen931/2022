use AdventureWorks;
go

declare @a int = 5;

if @a = 5
begin
	print 'five'
	return
	print 'Boo'
end
else if @a = 6
begin
	print 'six'
end
else if @a = 7
	print 'seven'
else
	print 'incorrect number'
go

print 'almost lunch'