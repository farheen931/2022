--Exercise 1: String Functions--

--Task 1: Add a new database: --

CREATE DATABASE NewDB
GO

USE NewDB
GO

--Task 2: Add a table: --
CREATE TABLE dbo.Payments(
RowID          INT           IDENTITY(1,1) PRIMARY KEY,
PaymentRef     INT,
CustomerRef    VARCHAR(10),
PaymentDT      DATETIME,
PaymentAmount  MONEY
)
GO

--Table currently has no values except the columns: --
SELECT * FROM dbo.Payments
GO

--Task 3: Add data to the new table: --
INSERT INTO dbo.Payments VALUES (1001,'CR001','2019-10-01T04:50:00',900.00)
INSERT INTO dbo.Payments VALUES (1002,'CR002','2019-10-01T07:13:00',234.00)
INSERT INTO dbo.Payments VALUES (1003,'CR003','2019-10-01T08:59:00',352.00)
INSERT INTO dbo.Payments VALUES (1004,'CR001','2019/10/01 09:12:00',617.00)
INSERT INTO dbo.Payments VALUES (1005,'CR004','2019-10-01T09:16:00',778.00)
INSERT INTO dbo.Payments VALUES (0,'ERROR','1753-01-01T00:00:00',0.00)
GO

--Summarising rows of data by payment date: --
SELECT PaymentDT , count(*) AS NumberRows,
sum(PaymentAmount) AS TotalPaid 
FROM dbo.Payments
GROUP BY PaymentDT
GO --The query does not summarize by date due to the column holding the time as well. --


--Exercise 2: Adding columns: --

--Task 1: Create a query that filters by year: --

ALTER TABLE dbo.Payments
ADD PaymentDate DATE
GO

SELECT * FROM dbo.Payments
GO --Note that the value for PaymentDate is currently null--

--Update the rows to fill the PaymentDate Column calculated from the Payment DT column: --
UPDATE dbo.Payments
SET PaymentDate = CONVERT(DATE, PaymentDT)
GO

--Review the PaymentDate column: --

SELECT * FROM dbo.Payments
GO
SELECT PaymentDate , count(*) AS NumberRows, 
sum(PaymentAmount) AS TotalPaid 
FROM dbo.Payments
GROUP BY PaymentDate
GO

--Exercise 3: Cleaning the data: --

--Task 1: Remove the rows with errors: --

DELETE FROM dbo.Payments
WHERE PaymentRef = 0
GO

SELECT * FROM dbo.Payments
GO
SELECT PaymentDate , count(*) AS NumberRows, 
sum(PaymentAmount) AS TotalPaid 
FROM dbo.Payments
GROUP BY PaymentDate
GO

--Task 2: Removing the table: --

DROP TABLE dbo.Payments
GO