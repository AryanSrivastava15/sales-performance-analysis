CREATE DATABASE superstore_db;
USE superstore_db;

CREATE TABLE orders (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);

-- Data Verification --
SELECT COUNT(*) FROM orders;
SELECT * 
FROM orders
LIMIT 10;