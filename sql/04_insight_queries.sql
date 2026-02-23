-- High revenue but low profit categories --

SELECT category,
	   SUM(sales) AS revenue,
       SUM(profit) AS profit
FROM orders
GROUP BY category
ORDER BY revenue DESC, profit ASC;

-- Profit margin analysis --
SELECT sub_category,
	   SUM(sales) AS revenue,
       SUM(profit) AS profit,
	   ROUND(SUM(profit)/NULLIF(SUM(sales), 0),2) AS profit_margin
FROM orders
GROUP BY sub_category
ORDER BY profit_margin DESC;

-- Discount impact deeper analysis --
SELECT 
	CASE
		WHEN discount < 0.3 THEN 'Low Discount'
        WHEN discount BETWEEN 0.3 AND 0.6 THEN 'Medium Discount'
        ELSE 'High Discount'
	END AS discount_level,
    AVG(profit) AS avg_profit
FROM orders
GROUP BY discount_level
ORDER BY avg_profit DESC;

-- Risky sub-categories --
SELECT sub_category,
	   SUM(profit) AS total_profit,
       AVG(profit) AS avg_profit
FROM orders
GROUP BY sub_category
ORDER BY total_profit;

-- Regional efficiency --
SELECT region,
	   ROUND(SUM(sales),2) AS total_revenue,
       ROUND(SUM(profit),2) AS total_profit,
       ROUND(AVG(profit),2) AS avg_profit
FROM orders
GROUP BY region
ORDER BY total_revenue DESC, total_profit ASC;

