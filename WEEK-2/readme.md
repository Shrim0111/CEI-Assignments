# Assignment 2 (A)- SQL-Based Data Analysis Using MySQL

## What this assignment is about

* This assignment focuses on performing data analysis using SQL on the Superstore dataset.
* The objective was to import a CSV dataset into MySQL, explore the data, apply filters, perform aggregations, analyze customer and product performance, identify duplicates, and validate data quality.
* The assignment helped in understanding practical SQL concepts such as `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`, aggregate functions, and data validation techniques.


## Dataset Used

* **File Name:** `sample_superstore.csv`
* **Database Name:** `superstore`
* **Table Name:** `sample_superstore`
* **Dataset Contains:**

  * Orders
  * Customers
  * Products
  * Sales
  * Profit
  * Quantity
  * Regions
  * Categories
  * Shipping Information


## Steps I Followed

### Step 1 – Creating Database and Importing Dataset

* Created a database named `superstore`.
* Imported the CSV file using MySQL Workbench's **Table Data Import Wizard**.
* Verified the imported data using `SELECT *`.


### Step 2 – Exploring the Dataset

* Examined the table structure using `DESCRIBE`.
* Viewed sample records using `LIMIT`.
* Identified columns and their data types.

---

### Step 3 – Renaming Columns

* Renamed columns containing spaces or special characters.

* Modified column names such as:

  * Row ID → row_id
  * Order ID → order_id
  * Order Date → order_date
  * Ship Date → ship_date
  * Customer Name → customer_name
  * Product Name → product_name

* This improved query readability and prevented SQL syntax issues.

---

### Step 4 – Applying Filters Using WHERE Clause

Performed filtering based on:

* Region
* Category
* Sales amount
* Order date range

Examples:

* Orders from South region
* Office Supplies category
* Sales greater than ₹3500
* Orders between specific dates

---

### Step 5 – Aggregation Using GROUP BY

Used aggregate functions such as:

* SUM()
* AVG()
* COUNT()

Analyzed:

* Total Sales
* Average Sales
* Total Quantity
* Total Profit
* Average Profit

Grouped results by category.

---

### Step 6 – Sorting and Ranking Results

Used:

* ORDER BY
* LIMIT

to identify:

* Top 3 products by sales
* Most profitable categories

---

### Step 7 – Business Use Cases

Performed customer and product analysis:

#### Top Customers

* Identified top 5 customers based on total sales.

#### Most Profitable Customers

* Identified top 5 customers generating maximum profit.

#### Duplicate Detection

* Checked duplicate entries using:

  * product_id
  * order_id

---

### Step 8 – Data Validation and Quality Checks

Performed data quality checks such as:

* Row counts by category
* Missing value verification
* Negative profit analysis
* High discount analysis
* Distinct customer count validation

---

## SQL Concepts Used

* SELECT
* WHERE
* BETWEEN
* GROUP BY
* HAVING
* ORDER BY
* LIMIT
* SUM()
* AVG()
* COUNT()
* DISTINCT
* Data Validation
* Duplicate Detection

## Output

Generated insights related to:

* Product performance
* Customer performance
* Category-wise sales
* Profitability analysis
* Data quality assessment
* Duplicate record identification

## Tools Used

* MySQL Workbench
* MySQL Database
* CSV Dataset (Superstore)
  
## What I Learned From This Assignment

* How to import CSV datasets into MySQL.
* How to explore database tables and schemas.
* How to clean and rename columns for easier querying.
* How to filter records using the WHERE clause.
* How to summarize data using aggregate functions.
* How to use GROUP BY for category-wise analysis.
* How to identify top-performing products and customers.
* How to detect duplicate records in a dataset.
* How to perform basic data validation and quality checks.
* How SQL can be used to extract meaningful business insights from raw data.


# Assignment 2 – E-Commerce Sales Database Analysis Using SQL

## What this Assignment is About

This assignment focuses on understanding and applying SQL concepts using an e-commerce database. The database contains information about customers, products, orders, and order items. The objective was to retrieve meaningful business insights using SQL queries and understand important database concepts such as constraints, indexes, joins, aggregations, transactions, and ACID properties. 


## Database Schema Used

The database consists of four tables:

### 1. Customers

Stores customer information such as:

* Customer ID
* Name
* Email
* City
* State
* Join Date
* Premium Membership Status

### 2. Products

Stores product details such as:

* Product ID
* Product Name
* Category
* Brand
* Unit Price
* Stock Quantity

### 3. Orders

Stores order information including:

* Order ID
* Customer ID
* Order Date
* Order Status
* Total Amount

### 4. Order Items

Stores item-level details for each order:

* Item ID
* Order ID
* Product ID
* Quantity
* Unit Price
* Discount Percentage

## Entity Relationships

The following relationships exist in the database:

```text
Customers (1:N) Orders
Orders (1:N) Order_Items
Products (1:N) Order_Items
```

Foreign Keys:

* orders.customer_id → customers.customer_id
* order_items.order_id → orders.order_id
* order_items.product_id → products.product_id

## Steps I Followed

### Step 1 – Creating Database Tables

* Created all four tables using `CREATE TABLE`.
* Defined Primary Keys and Foreign Keys.
* Applied constraints such as:

  * PRIMARY KEY
  * FOREIGN KEY
  * UNIQUE
  * NOT NULL
  * CHECK
  * DEFAULT

### Step 2 – Loading Sample Data

* Inserted sample records into all tables using `INSERT INTO`.
* Verified that data was successfully inserted.

### Step 3 – SQL Basics

Performed operations involving:

* SELECT statements
* Retrieving specific columns
* DISTINCT values
* Understanding Primary Keys
* Understanding Constraints

### Step 4 – Filtering Data

Used:

* WHERE clause
* AND / OR conditions
* BETWEEN operator

Examples:

* Delivered orders
* Electronics products above ₹2000
* Customers from Maharashtra
* Date-based filtering

### Step 5 – Understanding Indexes

Worked with:

* idx_customers_city
* idx_customers_state
* idx_products_category
* idx_orders_date
* idx_orders_status

Learned how indexes improve query performance and how SARGable queries make better use of indexes.

### Step 6 – Aggregation and Data Summarization

Used:

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING

Performed:

* Revenue analysis
* Category-wise analysis
* Order status analysis
* Product price analysis

### Step 7 – Working with Joins

Implemented:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN

Combined data from multiple tables to analyze:

* Customer orders
* Product sales
* Order details

### Step 8 – Advanced SQL Concepts

Worked with:

* CASE statements
* Foreign Key constraints
* Transactions
* ACID properties

Implemented transaction handling using:

* START TRANSACTION
* COMMIT
* ROLLBACK

## SQL Concepts Used

* SELECT
* DISTINCT
* WHERE
* BETWEEN
* ORDER BY
* GROUP BY
* HAVING
* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* CASE
* INDEXES
* PRIMARY KEY
* FOREIGN KEY
* TRANSACTIONS
* ACID PROPERTIES

## Output

Generated insights related to:

* Customer behavior
* Product performance
* Sales analysis
* Revenue trends
* Order status analysis
* Database relationships
* Transaction management

## Tools Used

* MySQL Workbench
* MySQL Database
* SQL

## What I Learned From This Assignment

* How relational databases are designed.
* Importance of Primary Keys and Foreign Keys.
* How constraints ensure data integrity.
* How indexes improve query performance.
* How to filter and aggregate data using SQL.
* How JOINs combine information from multiple tables.
* How CASE statements can be used for conditional logic.
* How transactions maintain consistency in databases.
* Importance of ACID properties in reliable database systems.

## Files Included

```text
schema.sql        → Table creation queries
data.sql          → Sample data insertion queries
solutions.sql     → Answers to all SQL questions
README.md         → Assignment documentation
```


