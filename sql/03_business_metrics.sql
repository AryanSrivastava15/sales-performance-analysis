-- Overall Performance --
SELECT SUM(sales) AS total_revenue,
	   SUM(profit) AS total_profit,
       SUM(quantity) AS total_quantity_sold
FROM orders;

-- Category Performance --
-- Revenue by eacg Category --
SELECT category,
	   SUM(sales) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;
-- Profit by each Category --
SELECT category,
	   SUM(profit) AS profit
FROM orders
GROUP BY category
ORDER BY profit DESC;

-- Sub-Category Performance --

-- Revenue by each Sub-category --
SELECT sub_category,
	   SUM(sales) AS revenue
FROM orders
GROUP BY sub_category
ORDER BY revenue DESC;
-- Profit by each Sub-category --
SELECT sub_category,
	   SUM(profit) AS profit
FROM orders
GROUP BY sub_category
ORDER BY profit DESC;

-- Regional Performance --

-- Revebue by region --
SELECT region,
	   SUM(sales) AS revenue
FROM orders
GROUP BY region
ORDER BY revenue DESC;
-- Profit by region --
SELECT region,
	   SUM(profit) AS profit
FROM orders
GROUP BY region
ORDER BY profit DESC;


-- Discount Impact --
SELECT discount,
	   AVG(profit) AS avg_profit
FROM orders
GROUP BY discount
ORDER BY discount DESC;