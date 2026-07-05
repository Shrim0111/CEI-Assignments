# Assignment 6 – Spark Architecture, Data Processing, and Optimized File Handling

## What this Assignment is About

This assignment focuses on understanding the architecture of Apache Spark and performing efficient data processing using Spark DataFrames. The objective was to learn how Spark executes applications through the Driver, Cluster Manager, and Executors while applying schema handling, DataFrame transformations, filtering, and optimized file formats such as CSV and Parquet.

The assignment also demonstrated Spark's execution model using Lazy Evaluation and DAG (Directed Acyclic Graph), along with performance optimization techniques such as shuffle operations and predicate pushdown.

---

## Objective of the Assignment

Understand Spark architecture and perform efficient data processing using transformations, filtering, schema handling, optimized file formats, and Spark performance optimization techniques.

---

## Dataset Used

The assignment was performed using a structured product dataset (`source.csv`) containing the following attributes:

- Product ID
- Product Name (`old_name`)
- Category
- Price
- Base Price
- Status
- Amount
- User ID
- Region
- Priority

---

## Steps I Followed

### Step 1 – Understanding Apache Spark Architecture

Learned the major components of Spark architecture:

- Driver Program
- Spark Session
- Cluster Manager
- Worker Nodes
- Executors
- Tasks

Understood how Spark distributes jobs across multiple executors for parallel processing.

---

### Step 2 – Understanding Spark Execution Model

Studied Spark execution concepts including:

- Lazy Evaluation
- Directed Acyclic Graph (DAG)
- Lineage Graph
- Jobs
- Stages
- Tasks

Learned how Spark creates an optimized execution plan before performing any action.

---

### Step 3 – Reading Data from CSV with Schema Handling

Loaded the `source.csv` dataset into a Spark DataFrame.

Performed:

- Reading CSV files
- Automatic schema inference
- Viewing schema using `printSchema()`
- Inspecting the dataset using `show()`

Also learned how Spark handles schemas efficiently compared to traditional processing.

---

### Step 4 – Selecting Required Columns

Selected only the required columns from the dataset such as:

- product_id
- old_name
- category
- price
- amount
- region
- priority

This reduced unnecessary processing and improved performance.

---

### Step 5 – Modifying the DataFrame

Performed multiple DataFrame modifications including:

- Renaming **old_name** to **product_name**
- Casting **price** and **amount** into appropriate numeric data types
- Creating new derived columns when required

These transformations improved the readability and usability of the dataset.

---

### Step 6 – Applying Filters

Filtered records based on different business conditions such as:

- Products with **Active** status
- High priority products
- Products from specific regions
- Products having price greater than a specified value
- Records with non-null User IDs

This demonstrated conditional data retrieval using Spark DataFrames.

---

### Step 7 – Applying Transformations and Actions

Applied DataFrame transformations including:

- `select()`
- `filter()`
- `withColumn()`
- `withColumnRenamed()`
- `cast()`

Executed Spark actions such as:

- `show()`
- `count()`
- `printSchema()`

Learned the difference between transformations and actions in Spark.

---

### Step 8 – Understanding Performance Optimization

Studied Spark optimization concepts including:

- Wide Transformations
- Shuffle Operations
- Predicate Pushdown
- Partition-based Processing

Learned how Spark minimizes unnecessary data movement for faster execution.

---

### Step 9 – Working with CSV and Parquet

Worked with both:

- CSV
- Parquet

Compared both formats based on:

- Storage size
- Read speed
- Compression
- Schema support
- Query performance

Learned why Parquet is preferred for large-scale analytics.

---

### Step 10 – Handling Missing Values

Performed data cleaning by:

- Identifying NULL values (such as missing `user_id`)
- Filtering incomplete records
- Replacing or removing missing values wherever required

This improved the quality of the processed dataset.

---

### Step 11 – Building a Complete Data Pipeline

Created a complete Spark ETL pipeline consisting of:

- Reading CSV data
- Schema validation
- Data transformation
- Filtering
- Null handling
- Writing processed data

This demonstrated an end-to-end Spark data processing workflow.

---

### Step 12 – Saving Processed Data

Saved the processed DataFrame into:

- CSV format
- Parquet format

This showed how different storage formats affect future processing performance.

---

### Step 13 – Following Spark Best Practices

Applied Spark best practices including:

- Using `show()` instead of `collect()` for previewing data
- Selecting only required columns
- Filtering records early
- Leveraging Lazy Evaluation
- Using optimized file formats like Parquet

---

## Spark Concepts Used

- Apache Spark
- Spark Architecture
- Spark Session
- Spark DataFrames
- Schema Handling
- Data Transformations
- Data Filtering
- Lazy Evaluation
- DAG (Directed Acyclic Graph)
- Wide Transformations
- Shuffle Operations
- Predicate Pushdown
- CSV & Parquet
- Data Pipeline
- Performance Optimization

---

## Output

Generated outputs including:

- Successfully loaded the **source.csv** dataset
- Displayed DataFrame schema
- Renamed product columns
- Filtered Active and High Priority products
- Cleaned records containing null values
- Compared CSV and Parquet performance
- Saved processed data into CSV and Parquet formats
- Built a complete Spark data processing pipeline
- Observed execution results and Spark optimization behavior

---

## Tools Used

- Apache Spark
- PySpark
- Python
- Jupyter Notebook
- Spark DataFrames
- CSV
- Parquet

---

## What I Learned From This Assignment

- Understood the architecture of Apache Spark, including Driver, Cluster Manager, Executors, and Worker Nodes.
- Learned how Spark optimizes execution using Lazy Evaluation and Directed Acyclic Graph (DAG).
- Loaded CSV datasets with proper schema handling using Spark DataFrames.
- Performed DataFrame transformations such as selecting columns, renaming `old_name` to `product_name`, casting data types, and creating derived columns.
- Filtered records based on product status, region, priority, and other business conditions.
- Learned the difference between transformations and actions in Spark.
- Understood shuffle operations, wide transformations, and predicate pushdown for improving Spark performance.
- Compared CSV and Parquet formats to understand their impact on storage and query execution.
- Built a complete ETL-style Spark pipeline for reading, transforming, filtering, and writing data.
- Applied Spark best practices for efficient processing of large datasets.
- Gained practical experience with Spark architecture and scalable data engineering workflows.
