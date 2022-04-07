use AdventureWorks;
go

create table tab2
(
	a int check (a < 5)
);
go

set XACT_ABORT on;
begin tran
	insert into tab2 values(1)
	insert into tab2 values(3);
	insert into tab2 values(7);
commit tran					-- like OK
--rollback tran				-- like CANCEL


select * from tab2;

truncate table tab2


