CREATE DATABASE banking 

CREATE TABLE customer ( 
    customer_id INT NOT NULL PRIMARY KEY 
    , customer_name varchar(50) NOT NULL 
    , [address] varchar(50) NOT NULL 
)

CREATE TABLE branch ( 
    branch_id INT NOT NULL PRIMARY KEY 
    , branch_name varchar(50) NOT NULL 
    , [address] varchar(50) NOT NULL 
)

CREATE TABLE account ( 
    account_id INT NOT NULL PRIMARY KEY 
    , customer_id INT NOT NULL FOREIGN KEY REFERENCES customer(customer_id)
    , branch_id INT NOT NULL FOREIGN KEY REFERENCES branch(branch_id)
    , account_type varchar(10)
    , balance bigint 
)

CREATE TABLE [transaction] ( 
    trans_id INT NOT NULL PRIMARY KEY 
    , account_id INT NOT NULL FOREIGN KEY REFERENCES account(account_id)
    , trans_date datetime 
    , amount bigint
    , trans_type varchar(50)
)

ALTER TABLE customer 
ADD [phone] varchar (20)

SELECT * FROM customer

ALTER TABLE customer
DROP COLUMN [phone]

-- Insert
INSERT INTO customer
VALUES (1, 'Nguyen Cong Duy', 'Hanoi')

INSERT INTO customer
VALUES (2, 'ncduy', 'HCM')