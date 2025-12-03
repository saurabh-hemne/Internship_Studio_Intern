CREATE DATABASE RetailSalesData;

USE RetailSalesData;

CREATE TABLE Sales_Data_Transactions (
    customer_id VARCHAR(255),
    trans_date VARCHAR(255),
    tran_amount INT
);

CREATE TABLE Sales_Data_Response (
    customer_id VARCHAR(255) PRIMARY KEY,
    response INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show variables like 'datadir';

create index idx_id on sales_data_transactions (customer_id);

explain select * from sales_data_transactions where customer_id = 'CS1850';
