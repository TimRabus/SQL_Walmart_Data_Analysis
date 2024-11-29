-- CUSTOMER ------


-- How many unique customer types does the data have?

SELECT DISTINCT customer_type
FROM sales;


-- How many unique payment methods does the data have?

SELECT DISTINCT payment
FROM sales;


-- Which customer type made the most purchases?

SELECT customer_type AS Customer,
	COUNT(*) AS Count
FROM sales
GROUP BY customer_type
ORDER BY Count DESC;


-- Which customer spends the most in total and on average?

SELECT customer_type,
	ROUND(SUM(total),2) AS Total,
    ROUND(AVG(total),2) AS Average
FROM sales
GROUP BY customer_type
ORDER BY 2 DESC;


-- What is the gender of most of the customers?

SELECT gender,
	COUNT(*) AS Count
FROM sales
GROUP BY gender
ORDER BY Count DESC;


-- What is the gender distribution per branch?

SELECT gender,
	branch,
    COUNT(*) AS Count
FROM sales
GROUP BY gender, branch
ORDER BY Branch, Gender, Count;


-- Which time of the day do customers give most ratings?

SELECT time_of_day, 
	ROUND(AVG(rating),2) AS Rating
FROM sales
GROUP BY time_of_day
ORDER BY Rating DESC;


-- Which time of the day do customers give most ratings per branch?

SELECT time_of_day,
	branch,
	ROUND(AVG(rating),2) AS Rating
FROM sales
GROUP BY time_of_day, branch
ORDER BY Rating DESC;


-- Which day fo the week has the best avg ratings?

SELECT day_name, 
	ROUND(AVG(rating),2) AS Rating
FROM sales
GROUP BY day_name
ORDER BY Rating DESC;


-- Which day of the week has the best average ratings per branch?

SELECT day_name,
	branch,
	ROUND(AVG(rating),2) AS Rating
FROM sales
GROUP BY day_name, branch
ORDER BY Rating DESC;


-- Which ratings give member vs non-member
SELECT
	customer_type,
    ROUND(AVG(rating),2) AS Rating
FROM sales
GROUP BY customer_type
ORDER BY Rating DESC;