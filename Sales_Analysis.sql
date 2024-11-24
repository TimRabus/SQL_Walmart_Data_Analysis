-- SALES ------ 

-- Number of sales made in each time of the day per weekday

SELECT
	day_name,
    time_of_day,
    COUNT(*) AS Sales
FROM sales
GROUP BY day_name, time_of_day
ORDER BY sales DESC;


-- Which of the customer types brings the most revenue?

SELECT 
	customer_type,
    ROUND(SUM(total),2) AS Revenue
FROM sales
GROUP BY customer_type
ORDER BY Revenue DESC;


-- Which city has the largest tax percent/ VAT (Value Added Tax)?

SELECT 
	city,
    ROUND(AVG(tax_pct),2) AS TaxPct
FROM sales
GROUP BY city
ORDER BY TaxPct DESC;


-- Which customer type pays the most in VAT?

SELECT
	customer_type,
    ROUND(AVG(tax_pct),2) AS VAT
FROM sales
GROUP BY customer_type
ORDER BY VAT DESC;