USE Northwind;

CREATE TABLE tab1
(
	a INT CHECK (a < 5) --Can only have less than 5
);

SET XACT_ABORT ON;
BEGIN TRAN
	INSERT INTO tab1 VALUES(1);
	INSERT INTO tab1 VALUES(3);
	INSERT INTO tab1 VALUES(10); --Error
COMMIT TRAN

SELECT * FROM tab1;

TRUNCATE table tab1;