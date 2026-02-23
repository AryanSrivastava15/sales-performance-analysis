-- Preview data --
SELECT *
FROM orders
LIMIT 20;

-- Dataset size --
SELECT COUNT(*)
FROM orders;

-- Distinct categories --
SELECT DISTINCT category AS unique_categories, sub_category AS unique_sub_categories
FROM orders
ORDER BY unique_categories;

-- Distinct Regions --
SELECT DISTINCT region
FROM orders
ORDER BY region;

-- Basic numeric understanding --
SELECT max(sales) AS max_sales,
	   min(sales) AS min_sales,
       max(profit) AS max_profit,
       min(profit) AS min_profit
FROM orders;