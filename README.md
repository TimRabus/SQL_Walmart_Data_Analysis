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
This project leverages SQL to analyze sales data from Walmart. SQL queries are used to process, clean, 
and extract insights from the dataset, such as:
- Identifying sales trends over quarters.
- Analyzing performance by region.
- Detecting seasonal variations in sales.

The project is designed to be run on any SQL database system (e.g., MySQL, PostgreSQL, SQLite).



## Data
The dataset includes sales data from Walmart stores, organized in the following schema:

### Table: `sales`
| Column         | Type        | Description                |
|----------------|-------------|----------------------------|
| `store_id`     | INT         | Unique identifier for store|
| `date`         | DATE        | Date of the sales record   |
| `region`       | VARCHAR     | Region of the store        |
| `sales_amount` | DECIMAL     | Total sales amount         |

Sample data can be found in the `data/` folder as a `.csv` file. If you'd like to load it into a database, 
use the `sql/schema/create_tables.sql` script.



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



