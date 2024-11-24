-- FEATURE ENGINEERING ------Adding new columns to the dataset in order to perform our analysis ------------------------



-- Adding TIME OF DAY

-- Specify the criteria for values: Morning, Afternoon and Evening
SELECT time,
	(CASE 
		WHEN time BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN time BETWEEN "12:00:01" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening" END) AS time_of_day
FROM sales;

-- Add a column to the dataset
ALTER TABLE sales
ADD COLUMN time_of_day VARCHAR(20);

-- Add the time of day in the new column via the criterias
UPDATE sales
SET time_of_day = (CASE 
		WHEN time BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN time BETWEEN "12:00:01" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening" END);





-- Adding DAY NAME   

-- Extract the day name out of the date column     
SELECT date, DAYNAME(date)
FROM sales;

-- Add a column to the dataset
ALTER TABLE sales
ADD COLUMN day_name VARCHAR(30);

-- Add the day name in the new column
UPDATE sales
SET day_name = DAYNAME(date);





-- Adding MONTH NAME

-- Extract the month name out of the date
SELECT date, MONTHNAME(date)
FROM sales;

-- Add a column to the dataset
ALTER TABLE sales
ADD COLUMN month_name VARCHAR(30);

-- Add the month name in the new column
UPDATE sales
SET month_name = MONTHNAME(date);