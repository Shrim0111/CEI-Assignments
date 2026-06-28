# Assignment 5 – Apache Spark DataFrames: Data Cleaning, Transformations, and Aggregations

## Objective

Understand Apache Spark fundamentals and perform data cleaning, transformation, filtering, and aggregation using Spark DataFrames. Learn how Spark's in-memory processing improves performance over traditional MapReduce and build an efficient data processing pipeline.

---

## Dataset

**Dataset:** `Spark_assignment_dataset.csv`

---

## Steps Performed

### Step 1 – Spark Setup

* Created a Spark Session.
* Loaded the CSV dataset into a Spark DataFrame.
* Verified schema and dataset contents.

### Step 2 – Spark Fundamentals

* Studied the limitations of MapReduce.
* Understood Spark's in-memory processing and DataFrame architecture.

### Step 3 – Data Cleaning

* Removed duplicate records.
* Handled null and empty values.
* Cleaned inconsistent data entries.

### Step 4 – Data Transformations

* Applied filtering conditions.
* Renamed columns.
* Cast data types (Timestamp).
* Modified DataFrame schema.

### Step 5 – Aggregations and Grouping

* Used `groupBy()` and `.agg()`.
* Calculated count, sum, average, minimum, and maximum values.
* Generated grouped analytical summaries.

### Step 6 – Spark Concepts

* Learned DataFrame immutability.
* Understood Shuffle operations and wide transformations.
* Built a complete Spark data processing pipeline combining cleaning, transformation, and aggregation.

---

## Spark Concepts Used

* SparkSession
* DataFrames
* Schema Inference
* Filtering
* dropDuplicates()
* na.fill()
* groupBy()
* agg()
* count()
* sum()
* avg()
* min()
* max()
* mean()
* withColumnRenamed()
* cast()
* TimestampType
* Wide Transformations
* Shuffle Operations
* DataFrame Immutability

---

## Output

* Cleaned and transformed dataset
* Filtered records
* Aggregated statistics
* Group-wise summaries
* Revenue and sales analysis
* Efficient Spark processing pipeline

---

## Tools Used

* Apache Spark
* PySpark
* Python
* Jupyter Notebook

---

## Learning Outcomes

* Understood Spark architecture and DataFrame operations.
* Performed data cleaning using Spark APIs.
* Applied filtering, grouping, and aggregation techniques.
* Learned schema modification and data type conversion.
* Understood shuffle operations and wide transformations.
* Built an end-to-end Spark DataFrame processing pipeline for scalable data analysis.


# Assignment 4 – Azure Data Factory and Cloud-Based Data Pipeline Implementation

## What this Assignment is About

This assignment focused on understanding Microsoft Azure cloud services and building an end-to-end data pipeline using Azure Storage Account and Azure Data Factory (ADF). The objective was to learn cloud resource management, data integration, metadata extraction, access control, and pipeline orchestration for moving data between storage locations.

---

## Azure Services Used

### Resource Group

Logical container used to organize and manage Azure resources.

### Storage Account

Cloud storage service used to store files and datasets.

### Blob Container

Storage location inside the Storage Account used for uploading and managing CSV files.

### Azure Data Factory (ADF)

Cloud-based data integration service used to create, schedule, and monitor data pipelines.

---

## Steps I Followed

### Step 1 – Creating Azure Resources

* Explored the Azure Portal.
* Created a Resource Group to manage all project resources.
* Verified successful deployment of resources.

### Step 2 – Creating Storage Account and Blob Container

* Created a Storage Account.
* Created a Blob Container within the Storage Account.
* Uploaded a CSV dataset to the container.
* Verified file availability in Blob Storage.

### Step 3 – Creating Azure Data Factory

* Created an Azure Data Factory instance.
* Explored ADF Studio components:

  * Author
  * Monitor
  * Manage
* Understood pipeline development and monitoring features.

### Step 4 – Creating Linked Services

* Configured Linked Service for Azure Blob Storage.
* Tested connection successfully.
* Established connectivity between ADF and Storage Account.

### Step 5 – Creating Datasets

* Created Source Dataset for the uploaded CSV file.
* Created Destination Dataset for the target storage location.
* Validated dataset configurations.

### Step 6 – Using Get Metadata Activity

* Added Get Metadata activity to the pipeline.
* Retrieved file properties such as:

  * File Name
  * Last Modified Date
  * Size
  * Structure Information
* Verified metadata extraction results.

### Step 7 – Building Data Pipeline

* Created a pipeline using Copy Data Activity.
* Configured source dataset.
* Configured destination dataset.
* Mapped source and destination data.
* Validated pipeline settings.

### Step 8 – Pipeline Execution and Monitoring

* Executed the pipeline using Debug mode.
* Triggered the pipeline for actual execution.
* Monitored execution status through ADF Monitor.
* Verified successful data movement.

### Step 9 – IAM Role Assignment and Access Management

* Assigned Azure IAM roles:

  * Reader
  * Contributor
* Configured permissions between Azure Data Factory and Storage Account.
* Ensured secure access and resource management.

### Step 10 – End-to-End Data Pipeline Validation

* Implemented complete data flow:

  Blob Storage → Azure Data Factory → Destination Storage

* Validated metadata before data transfer.

* Verified successful completion of the pipeline.

* Confirmed destination file availability.

---

## Pipeline Workflow

1. Upload CSV file to Blob Storage.
2. Retrieve file metadata using Get Metadata activity.
3. Validate file information.
4. Copy data using Copy Data activity.
5. Transfer data to destination storage.
6. Monitor pipeline execution.
7. Verify successful completion.

---

## Azure Concepts Used

* Azure Resource Group
* Azure Storage Account
* Blob Storage
* Azure Data Factory (ADF)
* Linked Services
* Datasets
* Get Metadata Activity
* Copy Data Activity
* Pipeline Creation
* Pipeline Monitoring
* Debug and Trigger Execution
* Identity and Access Management (IAM)
* Reader Role
* Contributor Role
* Cloud Data Integration
* ETL/Data Movement Pipeline

---

## Output Files

* Resource Group Screenshot
* Storage Account Screenshot
* Blob Container Screenshot
* Azure Data Factory Screenshot
* Linked Service Configuration Screenshot
* Dataset Configuration Screenshot
* Pipeline Design Screenshot
* Pipeline Execution Results Screenshot
* Monitoring Dashboard Screenshot
* Brief Project Summary

---

## Tools Used

* Microsoft Azure Portal
* Azure Storage Account
* Azure Blob Storage
* Azure Data Factory
* Azure IAM (Identity and Access Management)
* CSV Dataset

---

## What I Learned From This Assignment

* Understanding Azure cloud architecture and services.
* Creating and managing Azure resources.
* Working with Azure Storage Accounts and Blob Containers.
* Building data integration pipelines using Azure Data Factory.
* Configuring Linked Services and Datasets.
* Extracting file metadata using Get Metadata activity.
* Implementing data movement using Copy Data activity.
* Monitoring and troubleshooting pipeline execution.
* Managing permissions using Azure IAM roles.
* Designing and validating end-to-end cloud data pipelines.
* Understanding practical ETL and data orchestration concepts in Azure.


# Assignment 3 – SQL-Based Data Analysis Using Subqueries, CTEs, and Window Functions

## What this Assignment is About

This assignment focused on analyzing the Superstore dataset using advanced SQL concepts. The objective was to transform raw data into a structured database and use Subqueries, Common Table Expressions (CTEs), Window Functions, and Joins to solve business-related queries and generate customer sales insights.

## Database Schema Used

The database consists of four tables:

* superstore_raw – Raw imported dataset
* customers – Customer information
* products – Product information
* orders – Order transaction details

### Entity Relationships

* customers (1:N) orders
* products (1:N) orders

### Foreign Keys

* orders.customer_id → customers.customer_id
* orders.product_id → products.product_id

## Steps I Followed

### Step 1 – Creating Database and Importing Dataset

* Created the database **superstore1**.
* Imported the Superstore dataset into **superstore_raw**.
* Verified imported records.

### Step 2 – Data Cleaning and Preparation

* Renamed columns containing spaces and special characters.
* Improved readability and query execution.

### Step 3 – Creating Relational Tables

* Created customers, products, and orders tables.
* Defined Primary Keys and Foreign Keys.

### Step 4 – Populating Tables

* Inserted records using SELECT DISTINCT.
* Eliminated duplicate customer and product entries.

### Step 5 – Using Subqueries

* Found orders above average sales.
* Identified highest sales order for each customer.

### Step 6 – Using CTEs

* Calculated total sales per customer.
* Identified customers with above-average sales.

### Step 7 – Using Window Functions

* Ranked customers based on total sales.
* Assigned row numbers to customer orders.
* Identified top-performing customers.

### Step 8 – Customer Sales Insights

* Top 5 customers
* Bottom 5 customers
* Single-order customers
* Above-average sales customers
* Highest order value per customer

## SQL Concepts Used

* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* SELECT DISTINCT
* JOIN
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* RANK()
* GROUP BY
* HAVING
* ORDER BY
* SUM()
* AVG()
* MAX()
* COUNT()

## Output Files

* main_solution.sql
* README.md

## Tools Used

* MySQL Workbench
* MySQL Database
* Superstore Dataset

## What I Learned From This Assignment

* Database normalization and table design
* Creating relationships using foreign keys
* Using Subqueries for advanced filtering
* Using CTEs for reusable query logic
* Applying Window Functions for ranking and analysis
* Combining JOINs, CTEs, and Window Functions
* Generating customer sales insights from transactional data
* Solving real-world business problems using SQL

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


