CREATE DATABASE Retail_analysis;

USE Retail_analysis;
DROP TABLE  IF EXISTS online_retail;
CREATE TABLE online_retail(
	InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate VARCHAR(20),
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(50)
);

ALTER TABLE online_retail
MODIFY InvoiceDate VARCHAR(30);

ALTER TABLE online_retail 
ADD COLUMN InvoiceDate_clean DATETIME;

UPDATE online_retail
SET InvoiceDate_clean=STR_TO_DATE(InvoiceDate, '%d-%m-%Y %H:%i');

SET SQL_SAFE_UPDATES=0;

ALTER TABLE online_retail
DROP COLUMN InvoiceDate;

ALTER TABLE online_retail
CHANGE COLUMN InvoiceDate_clean InvoiceDate DATETIME;

SELECT InvoiceDate, InvoiceDate_clean
FROM online_retail;

SELECT * FROM online_retail;