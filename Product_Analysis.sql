-- BUSINESS QUESTION TO ANSWER ------ General Questions & Product ------ 

-- GENERAL QUESTIONS ------ 

-- How many unique cities does the data have?

SELECT DISTINCT City
FROM Sales;

-- In which city is each branch?

SELECT DISTINCT City, Branch
FROM sales;





-- PRODUCT ------ 

-- How many unique product lines does the data have?

SELECT DISTINCT product_line
FROM sales;


-- What is the most common payment method per product line?

SELECT 
	product_line, 
	payment, 
    COUNT(*) AS Count 
FROM sales
GROUP BY product_line, payment 
ORDER BY 1, 2;


-- What is the most selling product line?

SELECT 
	product_line,
    SUM(quantity) AS qty
FROM sales
GROUP BY product_line
ORDER BY qty DESC;


-- What is the total revenue by month and product line?

SELECT 
	product_line,
    month_name, 
    ROUND(SUM(total),2) AS revenue
FROM sales
GROUP BY product_line, month_name
ORDER BY 1, 3 DESC;


-- What month had the largest COGS?

SELECT 
	month_name, 
    MAX(COGS) AS COGS
FROM sales
GROUP BY month_name
ORDER BY MAX(COGS) DESC;


-- What product line had the largest revenue?

SELECT product_line, SUM(total) AS revenue
FROM sales
GROUP BY product_line
ORDER BY revenue DESC;


-- What product line had the largest VAT?

SELECT DISTINCT product_line, MAX(tax_pct) as VAT
FROM sales
GROUP BY product_line
ORDER BY VAT DESC;


-- Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales

SELECT 
	product_line,
	ROUND(AVG(total),2) AS avg_sales,
	(CASE
		WHEN AVG(total) > (SELECT AVG(total) FROM sales) THEN "Good"
		ELSE "Bad"
		END) AS Remarks
FROM sales
GROUP BY product_line;


ALTER TABLE sales
ADD COLUMN Remarks VARCHAR(10);

UPDATE sales
SET Remarks = "Good"
WHERE product_line = "Food and beverages";

UPDATE sales
SET Remarks = "Good"
WHERE product_line = "Health and beauty";

UPDATE sales
SET Remarks = "Good"
WHERE product_line = "Sports and travel";

UPDATE sales
SET Remarks = "Good"
WHERE product_line = "Home and lifestyle";

UPDATE sales
SET Remarks = "Bad"
WHERE product_line = "Fashion accessories";

UPDATE sales
SET Remarks = "Bad"
WHERE product_line = "Electronic accessories";


-- Which branch sold more products than average product sold?

SELECT branch, SUM(quantity) AS qty
FROM sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales);


-- What is the most common product line by gender

SELECT product_line, gender, COUNT(gender) AS Count
FROM sales
GROUP BY gender, product_line
ORDER BY Gender, Count DESC;


-- What is the average rating of each product line

SELECT product_line, ROUND(AVG(rating),2) AS rating
FROM sales
GROUP BY product_line
ORDER BY rating DESC;


-- Which day of the week has the best average ratings per product line?

SELECT day_name,
	product_line,
	ROUND(AVG(rating),2) AS Rating
FROM sales
GROUP BY day_name, product_line
ORDER BY 1 DESC;