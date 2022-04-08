USE Northwind;

CREATE TABLE dbo.Workers
(
	wID     int          NOT NULL  primary key identity(1,1),
	fname   varchar(30)  NOT NULL,
	Info    varchar(100) NULL
);

INSERT INTO dbo.Workers(fname, Info)
VALUES ('Fred', 'Bit of an idiot');

SELECT * FROM dbo.Workers;

--Mulitple entries:--
INSERT INTO dbo.Workers(fname, Info)
VALUES ('Doris', 'Very old'),
	   ('Ethel', 'Even Older'),
	   ('George', 'Very ancient');

INSERT INTO dbo.Workers(fname)
	SELECT FirstName
	FROM dbo.Employees; --Inserting the names from employees into workers table

--Update dbo.workers:--
UPDATE dbo.Workers	
	SET Info = 'Nothing to say'
	WHERE Info is Null;

UPDATE dbo.Workers	
	SET  fname = 'Freddy', Info = 'Nice person'
	WHERE wID = 1;

--Delete from table:--
DELETE dbo.Workers
WHERE wID = 4;

--Adding someone new to test if it changes ID:--
INSERT INTO dbo.Workers(fname, Info)
VALUES ('Kasra', 'Very helpful'); --Doesn't backfill--

--Replacing id 4:--

SET IDENTITY_INSERT dbo.workers on 
INSERT INTO dbo.Workers(wid, fname, Info)
VALUES (4, 'Boris', 'Funny hair'); 

SELECT * FROM dbo.Workers;

SET IDENTITY_INSERT dbo.workers OFF;

BEGIN TRAN
	truncate table dbo.workers;
	DELETE dbo.Workers;

	SELECT * FROM dbo.Workers;

	INSERT INTO dbo.Workers (fname, Info)
	VALUES ('Dennis', 'Bit of a menace');

	SELECT * FROM dbo.Workers;

ROLLBACK TRAN;

