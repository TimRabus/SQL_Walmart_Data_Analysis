# About: SQL_Walmart_Data_Analysis
The primary aim of this project is to analyze Walmart's sales data to uncover insights into the factors influencing sales across different branches, while addressing key business questions related to products, sales strategies, and customer behavior.



## Table of Contents
1. [Introduction](#introduction)
2. [Data](#data)
3. [Project Overview](#project-overview)
4. [Results](#results)
5. [Replication](#replication)




## Introduction
### Walmart Q1 2019 Sales Analysis Using SQL
This project analyzes Walmart's sales data from the first quarter of 2019 using SQL. The primary objective is to uncover key insights and trends in the quarterly performance by leveraging SQL queries for data exploration and analysis. 


The project focuses on:

   - Evaluation of Product Lines: Identifying performance variations across different categories.
   - Effectiveness of Sales Strategies: Assessing the impact of various sales approaches on overall revenue.
   - Customer Segment Analysis: Gaining insights into the behavior and contribution of distinct customer groups.

The project was conducted in MySQL Workbench.





## Data
The dataset contains sales data from Walmart's first quarter of 2019, including information on product categories, sales revenue, customer segments, and sales dates. The data is organized in the following schema:

### Table: `sales`
| Column                    | Type              | Description                             |
|---------------------------|-------------------|-----------------------------------------|
| `invoice_id`              | VARCHAR (30)      | Invoice of the sales made               |
| `branch`                  | VARCHAR (5)       | Branch at which sales were made         |
| `city`                    | VARCHAR (30)      | The location of the branch              |
| `customer_type`           | VARCHAR (30)      | The type of the customer                |
| `gender    `              | VARCHAR (10)      | Gender of the customer making purchase  |
| `product_line`            | VARCHAR (100)     | Product line of the product sold        |
| `unit_price`              | DECIMAL(10, 2)    | The price of each product               |
| `quantity`                | INTEGER           | The amount of the product sold          |
| `VAT`                     | FLOAT(6, 4)       | The amount of tax on the purchase       |
| `total`                   | FLOAT(6, 4)       | The total cost of the purchase          |
| `date`                    | DATE              | The date on which the purchase was made |
| `time`                    | TIMESTAMP         | The time at which the purchase was made |
| `payment_method`          | DECIMAL(10, 2)    | The method with which was paid          |
| `cogs`                    | DECIMAL(10, 2)    | Cost Of Goods sold                      |
| `gross_margin_percentage` | FLOAT(11, 9)      | Gross margin percentage                 |
| `gross_income`            | DECIMAL(10, 2)    | Gross Income                            |
| `rating`                  | FLOAT(2, 1)       | Rating                                  |

Sample data can be found in the `WalmartSalesData.csv` file.





## Project Overview
This project is structured into three distinct parts, each focusing on a critical aspect of data analysis.

1. **Data Wrangling**:
   The first stage ensures the dataset is clean and ready for analysis. Key steps include:
      - Building a database, creating tables, and inserting data.
      - Handling `NULL` or missing values by setting constraints like `NOT NULL` during table creation.
      - Verifying that no `NULL` values exist in the dataset.

   The SQL queries used for the Data Wrangling step can be found in the `Data_Wrangling.sql` file.



2. **Feature Engineering**:
   New columns are created from existing data to provide deeper insights:
      - `time_of_day`: Categorizes transactions into Morning, Afternoon, or Evening, revealing sales trends throughout the day.
      - `day_name`: Extracts the day of the week (e.g., Mon, Tue), helping identify the busiest days for each branch.
      - `month_name`: Extracts the month (e.g., Jan, Feb) to determine which months drive the highest sales and profit.

   The SQL queries used for the Feature Engineering step can be found in the `Feature_Engineering.sql` file.



3. **Exploratory Data Analysis (EDA)**:
   The final stage of this project focuses on analyzing the processed data to address key business questions and uncover trends in sales performance, customer behavior, and product demand. This stage is divided into three main analyses, each performed using specific SQL queries:

   1. **Product Analysis**
      - Goal: Understand the performance of different product lines and their contributions to overall sales.
      - Query: `Product_Analysis.sql` file
     
   2. **Sales Analysis**
      - Goal: Evaluate sales trends across branches to measure the effectiveness of various sales strategies.
      - Query: `Sales_Analysis.sql` file
     
   3. **Customer Analysis**
      - Goal: Examine customer segments, purchasing trends, and profitability to identify high-value segments.
      - Query: `Customer_Analysis.sql` file





## Results
The SQL queries result in the following insights and are divided into three main analyses: product performance, sales trends, and customer behavior, each offering distinct insights into the factors driving business outcomes:

 1. **Product Analysis**
      - Top Product Lines: Electronic Accessories is the best-selling product line, while Food and Beverages (F&B) generates the highest revenue at $561 million.
      - Product Preferences by Gender: Fashion Accessories are most popular among women, whereas Health and Beauty products are favored by men.
      - Overall Performance: Four out of six product lines demonstrate above-average sales, with F&B also being the highest-rated product line at 7.11.

2. **Sales Analysis**
      - Top-Performing Cities: Naypyitaw ranks highest in sales revenue at $110,5 million, while Yangon records the highest sales volume.
      - Branch Sales Trends: Across all branches, Wednesday emerges as the top-performing sales day, whereas Friday records the lowest sales.
      - Payment and Timing Patterns: Cash continues to be the most frequently used payment method, with Saturday evenings being the peak time for customer purchases.
   
3. **Customer Analysis**
      - Demographics and Preferences: Gender distribution is nearly equal, with a slight majority of male customers, and members slightly outnumbering non-members.
      - Member vs. Non-Member: Non-members purchase more frequently and spend more per transaction on average.
      - Rating Trends: Customers provide the highest ratings on Monday (average 7.13) and during afternoons (average 7.02).
    


## Replication
To replicate this Walmart Sales project, please follow the steps outlined below.

1. **Set up MySQL Environment**:
   - Install MySQL Workbench (or any other preferred MySQL client).
   - Ensure MySQL server is running and accessible.

2. **Download and Prepare Data**:
   - Download the WalmartSalesData.csv (or your dataset).
   - Ensure the dataset is clean and properly formatted for MySQL import.

3. **Create Database and Tables**:
   - Create a new database in MySQL: `CREATE DATABASE` walmart_sales;
   - Create the sales table using the schema provided in the Data section of the project.
   - Import the data from the CSV file into the sales table using the LOAD DATA INFILE statement or MySQL Workbench's import functionality.

4. **Data Wrangling**:
   - Run SQL queries from the Data_Wrangling.sql file to clean the data (e.g., handling `NULL`, ensuring no missing values, setting constraints like `NOT NULL`).

5. **Feature Engineering**:
   - Use SQL queries from the Feature_Engineering.sql file to create new columns (e.g. `time_of_day`, `day_name`, `month_name`) to enhance the dataset with additional insights.
   - Test the transformations by querying the new columns to verify correct calculations.

6. **Exploratory Data Analysis (EDA)**:
   - Run the analysis queries from the following files:
      - `Product_Analysis.sql` – To analyze product performance and sales trends.
      - `Sales_Analysis.sql` – To explore sales trends, time distribution, and tax-related insights.
      - `Customer_Analysis.sql` – To examine customer behavior, demographics, and purchasing patterns.
   - Check the results of each analysis using SELECT statements and aggregate functions to answer key business questions.

7. **Analyze and Interpret Results**:
   - Review the insights generated from each analysis (Product, Sales, and Customer).
   - Make sure the results align with business goals and provide actionable insights (e.g., sales trends, customer preferences).



If you made any improvements, feel free to contribute back or share findings via GitHub issues, pull requests, or README documentation.


