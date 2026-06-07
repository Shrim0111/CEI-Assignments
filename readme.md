
# Assignment 2 (A) – E-Commerce Database Analysis Using SQL

## What this Assignment is About

This assignment focused on understanding relational databases and writing SQL queries to analyze customer, product, and order data. The objective was to retrieve business insights while learning database concepts such as constraints, indexes, joins, aggregation, transactions, and ACID properties.

---

## Database Schema Used

The database consists of four tables:

* **customers** – Customer details and membership information
* **products** – Product and pricing information
* **orders** – Order records and status details
* **order_items** – Item-level order information

---

## Entity Relationships

```text
customers (1:N) orders
orders (1:N) order_items
products (1:N) order_items
```

Foreign Keys:

* orders.customer_id → customers.customer_id
* order_items.order_id → orders.order_id
* order_items.product_id → products.product_id

---

## Steps I Followed

### Step 1 – Creating Database Tables

* Created tables using CREATE TABLE.
* Defined Primary Keys and Foreign Keys.
* Applied constraints such as NOT NULL, UNIQUE, CHECK, and DEFAULT.

### Step 2 – Loading Sample Data

* Inserted sample records into all tables.
* Verified successful data insertion.

### Step 3 – Basic SQL Operations

* Used SELECT statements.
* Retrieved specific columns.
* Worked with DISTINCT values.
* Studied Primary Keys and Constraints.

### Step 4 – Filtering Records

* Applied WHERE conditions.
* Used AND, OR, and BETWEEN operators.
* Filtered records based on category, status, and dates.

### Step 5 – Working with Indexes

* Understood index creation and usage.
* Learned query optimization techniques.
* Explored SARGable queries.

### Step 6 – Aggregation and Analysis

* Used COUNT(), SUM(), AVG(), MIN(), and MAX().
* Performed GROUP BY and HAVING operations.

### Step 7 – Joins and Relationships

* Implemented INNER JOIN, LEFT JOIN, and RIGHT JOIN.
* Combined data across multiple tables.

### Step 8 – Advanced SQL Concepts

* Used CASE statements.
* Studied Foreign Keys and Referential Integrity.
* Implemented Transactions and ACID concepts.

## SQL Concepts Used

* SELECT
* DISTINCT
* WHERE
* BETWEEN
* GROUP BY
* HAVING
* JOINS
* CASE
* INDEXES
* PRIMARY KEY
* FOREIGN KEY
* TRANSACTIONS
* ACID PROPERTIES

## Output Files

```text
schema.sql
insert_data.sql
solutions.sql
README.md
```

## Tools Used

* MySQL Workbench
* MySQL Database
* SQL

## What I Learned From This Assignment

* Database design and relationships
* Primary Keys and Foreign Keys
* Data filtering and aggregation
* Joins and multi-table queries
* Query optimization using indexes
* Transactions and ACID properties

# Assignment 2(B) – SQL-Based Data Analysis Using MySQL

## What this Assignment is About

This assignment focused on analyzing the Superstore dataset using SQL. The objective was to import data into MySQL, perform exploratory analysis, apply filters, generate summaries, identify top-performing entities, and validate data quality.

## Dataset Used

* **Dataset:** Sample Superstore
* **Database:** superstore
* **Table:** sample_superstore

Dataset includes:

* Orders
* Customers
* Products
* Sales
* Profit
* Quantity
* Categories
* Regions


## Steps I Followed

### Step 1 – Importing Dataset

* Created the database.
* Imported the CSV dataset into MySQL.
* Verified successful import.

### Step 2 – Exploring Data

* Examined schema and column details.
* Viewed sample records.
* Checked data types.

### Step 3 – Cleaning Column Names

* Renamed columns containing spaces and special characters.
* Improved query readability.

### Step 4 – Filtering Data

* Applied WHERE conditions.
* Filtered records by region, category, sales, and dates.

### Step 5 – Aggregation and Analysis

* Used SUM(), AVG(), and COUNT().
* Performed category-wise sales and profit analysis.

### Step 6 – Ranking Results

* Used ORDER BY and LIMIT.
* Identified top products and categories.

### Step 7 – Business Use Cases

* Identified top customers.
* Found most profitable customers.
* Detected duplicate records.

### Step 8 – Data Validation

* Performed row-count validation.
* Checked negative profits and high discounts.
* Verified customer counts.


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


## Output Files

```text
solutions.sql
Sample_Superstore.csv
README.md
```


## Tools Used

* MySQL Workbench
* MySQL Database
* SQL


## What I Learned From This Assignment

* Importing CSV data into MySQL
* Exploring and cleaning datasets
* Data filtering and aggregation
* Customer and product performance analysis
* Duplicate detection techniques
* Data validation and quality checks
* Extracting business insights using SQL


# Assignment 1 – Python Basics and Data Exploration Using Pandas

## What this Assignment is About

This assignment focused on learning Python basics and using the Pandas library for data exploration and cleaning. The objective was to load a real-world e-commerce dataset, handle missing values, perform basic data analysis, and save a cleaned version of the dataset.

---

## Dataset Used

* **File Name:** `e-commerce1_dataset.csv`
* **Location:** `WEEK-1/`
* **Dataset Type:** E-commerce Product Listings
* **Contains:**

  * Product Information
  * Pricing Details
  * Discounts
  * Ratings & Reviews
  * Seller Information

---

## Steps I Followed

### Step 1 – Loading the Dataset

* Imported Pandas and NumPy.
* Loaded the CSV file into a DataFrame.

### Step 2 – Exploring the Data

* Viewed sample records using `head()` and `tail()`.
* Checked dataset dimensions, columns, and data types.

### Step 3 – Handling Missing Values

* Identified missing values using `isnull()`.
* Filled missing values using appropriate default values.

### Step 4 – Filtering and Selecting Data

* Applied filters based on discount and rating.
* Selected relevant columns for analysis.

### Step 5 – Checking Duplicates

* Checked for duplicate records.
* Verified data uniqueness.

### Step 6 – Creating a New Column

* Cleaned the `final_price` column.
* Created a new `total_amount` column using existing data.

### Step 7 – Saving the Cleaned Dataset

* Exported the cleaned dataset to a new CSV file.

---

## Python Concepts Used

* Pandas DataFrame
* Data Exploration
* Missing Value Handling
* Filtering & Selection
* Duplicate Detection
* Data Type Conversion
* Column Creation
* CSV Export

---

## Output Files

```text
solutions.ipynb              → Jupyter Notebook containing all code
cleaned_ecommerce_data.csv   → Final cleaned dataset
```

---

## Libraries Used

* Pandas
* NumPy

---

## What I Learned From This Assignment

* How to load and explore datasets using Pandas.
* How to handle missing values effectively.
* How to filter and analyze data.
* How to clean and convert data types.
* How to create derived columns.
* How to detect duplicates in a dataset.
* How to save processed data for further analysis.


