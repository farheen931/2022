select * from sys.messages;

exec sp_addmessage 50001,25,'The database %s has been deleted by %s';

declare @db varchar(30) = (select db_name());
declare @un varchar(30) = (select SUSER_NAME());

raiserror(50001,25,1,@db,@un) with log;

raiserror('Hello',16,1);

throw 50002, 'Hello', 1