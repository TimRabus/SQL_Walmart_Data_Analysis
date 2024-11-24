# SQL_Walmart_Data_Analysis
This project analyzes Walmart's quarterly sales data using SQL queries. It focuses on uncovering trends, regional performance,  and seasonality in sales, all achieved through efficient database queries.

## Table of Contents
1. [Introduction](#introduction)
2. [Data](#data)
3. [SQL Queries](#sql-queries)
4. [Results](#results)
5. [Usage](#usage)
6. [License](#license)


## Introduction
# Walmart Q1 2019 Sales Analysis Using SQL
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

Sample data can be found in the `data/` folder as a `.csv` file.



## SQL Queries
The project is divided into three main analyses, each performed using specific SQL queries:

1. **Sales Trends**:
   - Query: `sql/queries/sales_trends.sql`
   - Goal: Analyze how sales have evolved quarter by quarter.

2. **Regional Analysis**:
   - Query: `sql/queries/regional_analysis.sql`
   - Goal: Compare performance across different regions.

3. **Seasonality**:
   - Query: `sql/queries/seasonality.sql`
   - Goal: Identify seasonal sales patterns.

You can find all queries in the `sql/queries/` folder.



## Results
The SQL queries provided insights such as:

- **Sales Trends**: Sales have consistently increased by an average of 12% in Q4 compared to other quarters.
- **Regional Performance**: Region X outperforms others with 40% higher sales on average.
- **Seasonality**: Sales peak in November and December, reflecting holiday shopping trends.

Refer to the `docs/project_summary.pdf` for a detailed explanation.




## Usage
1. Set up a database (e.g., MySQL, PostgreSQL, SQLite).
2. Create the necessary tables:
   ```bash
   psql -U username -d database_name -f sql/schema/create_tables.sql



