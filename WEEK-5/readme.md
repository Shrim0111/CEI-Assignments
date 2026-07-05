# Assignment 5 – Spark Data Processing Using DataFrames and Transformations

## What this Assignment is About

This assignment focuses on understanding the fundamentals of Apache Spark and performing data processing using Spark DataFrames. The objective was to learn how Spark overcomes the limitations of MapReduce through in-memory processing and to apply various data cleaning, transformation, filtering, and aggregation operations on structured datasets.

The assignment helped in understanding practical big data processing techniques used in real-world data engineering, including handling missing values, removing duplicates, transforming data, grouping records, performing aggregations, and building a complete Spark data processing pipeline.

---

# Objective of the Assignment

Understand Spark fundamentals and perform data cleaning, transformation, and aggregation using Spark DataFrames.

---

# Dataset Used

The assignment was performed using a structured sample dataset containing records such as:

* Employee Details
* Customer Information
* Sales Records
* Product Details
* Age
* Department
* Region
* Salary
* Category

*(The dataset may vary depending on the notebook implementation.)*

---

# Steps I Followed

## Step 1 – Understanding Apache Spark

Learned the limitations of MapReduce, such as:

* High disk I/O
* Slow iterative processing
* Large execution time

Studied how Apache Spark solves these issues using:

* In-memory processing
* Distributed computing
* Faster execution
* Lazy evaluation

---

## Step 2 – Understanding Spark DataFrames

Learned the concept of Spark DataFrames.

Studied features such as:

* Immutable datasets
* Distributed processing
* Schema-based data
* Optimized query execution

Created DataFrames from structured data for further analysis.

---

## Step 3 – Data Cleaning

Performed various data cleaning operations including:

* Removing duplicate records
* Handling missing (NULL) values
* Replacing empty values
* Correcting inconsistent data
* Improving overall data quality

This ensured accurate analysis and reliable results.

---

## Step 4 – Data Transformation

Applied multiple DataFrame transformations such as:

* Selecting required columns
* Renaming columns
* Changing data types (Casting)
* Creating new derived columns
* Filtering records using conditions

These transformations prepared the dataset for analysis.

---

## Step 5 – Applying Filters

Filtered records based on different business conditions, including:

* Age range
* Department
* Category
* Region
* Salary conditions

This demonstrated conditional data retrieval using Spark DataFrames.

---

## Step 6 – Aggregation Operations

Performed aggregate analysis using functions such as:

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

These operations generated summary statistics from the dataset.

---

## Step 7 – Grouping Data

Grouped records using **groupBy()** and calculated aggregated values.

Examples included:

* Total sales by category
* Employee count by department
* Average salary by department
* Regional performance analysis

This helped understand grouped analytics in Spark.

---

## Step 8 – Understanding Wide Transformations

Learned about wide transformations and shuffle operations.

Studied operations such as:

* groupBy()
* join()
* reduceByKey()
* repartition()

Understood how Spark redistributes data across partitions during execution.

---

## Step 9 – Schema Modification

Modified DataFrame schema by:

* Renaming columns
* Casting data types
* Updating column definitions
* Standardizing data formats

This improved consistency and readability of the dataset.

---

## Step 10 – Building a Complete Data Processing Pipeline

Combined all operations into a complete Spark workflow:

* Data Loading
* Data Cleaning
* Data Transformation
* Filtering
* Aggregation
* Grouping
* Output Generation

This demonstrated a complete ETL-style data processing pipeline using Spark DataFrames.

---

# Spark Concepts Used

* Apache Spark
* Spark Session
* DataFrames
* Schema Inference
* Data Cleaning
* removeDuplicates()
* dropDuplicates()
* fillna()
* dropna()
* Filtering
* select()
* withColumn()
* withColumnRenamed()
* cast()
* groupBy()
* agg()
* count()
* sum()
* avg()
* min()
* max()
* Wide Transformations
* Shuffle Operations
* Lazy Evaluation

---

# Output

Generated insights related to:

* Cleaned dataset
* Filtered records
* Group-wise summaries
* Aggregate statistics
* Department-wise analysis
* Category-wise analysis
* Regional analysis
* Data transformation results
* Final processed dataset

---

# Tools Used

* Apache Spark
* PySpark
* Jupyter Notebook
* Python
* Spark DataFrames

---

# What I Learned From This Assignment

* Understood the limitations of MapReduce and the advantages of Apache Spark.
* Learned how Spark DataFrames store and process structured data efficiently.
* Performed data cleaning by handling duplicates and missing values.
* Applied filtering and transformation operations using DataFrame APIs.
* Used aggregation functions to generate business insights.
* Grouped data using **groupBy()** for analytical reporting.
* Learned the concept of wide transformations and shuffle operations.
* Modified DataFrame schemas by casting and renaming columns.
* Built a complete Spark data processing pipeline combining cleaning, transformation, and aggregation.
* Gained practical experience with Spark DataFrames for scalable data engineering tasks.
