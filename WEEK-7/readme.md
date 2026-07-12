# Assignment – 7 Delta Lake MERGE Operations and Incremental Data Processing

## What this Assignment is About

This assignment focuses on implementing incremental data processing using **Delta Lake** with **PySpark**. The objective was to create a clean customer master table from a raw dataset, simulate incremental data containing updates and new records, perform **MERGE** operations, and validate the changes using Delta Lake features.

---

# Objective of the Assignment

Learn how to build an incremental ETL pipeline using Delta Lake by creating Delta tables, processing incremental data, performing MERGE operations (UPSERT), and validating changes.

---

# Dataset Used

The assignment was performed using the **Sample - Superstore.csv** dataset containing customer-related information such as:

* Customer ID
* Customer Name
* Segment
* City
* State
* Region

---

# Steps I Followed

## Step 1 – Loading the Dataset

Loaded the Superstore CSV dataset into a Spark DataFrame.

Performed:

* Reading CSV files
* Automatic schema inference
* Displaying sample records
* Counting total records

---

## Step 2 – Creating the Customer Master Table

Extracted customer-related columns from the dataset and created a separate customer master DataFrame.

Performed:

* Selecting required columns
* Renaming columns
* Removing duplicate customer records

---

## Step 3 – Data Cleaning

Improved data quality by:

* Identifying NULL values
* Removing records with missing Customer ID or Customer Name
* Eliminating duplicate records

This ensured a clean customer master dataset.

---

## Step 4 – Saving as a Delta Table

Stored the cleaned customer DataFrame as a Delta table.

Performed:

* Writing data in Delta format
* Creating the `customer_master` table
* Verifying saved records

---

## Step 5 – Creating Incremental Data

Simulated incoming incremental data by:

* Updating existing customer records
* Creating new customer records
* Combining updates and inserts into one incremental dataset
* Saving both original and incremental datasets as CSV files

---

## Step 6 – Performing MERGE Operation

Merged incremental data into the Delta table using Delta Lake's MERGE command.

Performed:

* Updating existing customer records
* Inserting new customer records
* Maintaining a single up-to-date customer master table

---

## Step 7 – Validating the Results

Verified the success of the MERGE operation by:

* Checking total record count
* Viewing updated customer records
* Displaying Delta table history using `DESCRIBE HISTORY`

---

## Step 8 – Displaying Final Output

Displayed the final customer master table after the MERGE operation and compared record counts before and after processing.

---

# Delta Lake Concepts Used

* Apache Spark
* PySpark
* Delta Lake
* Delta Tables
* Spark DataFrames
* Data Cleaning
* Duplicate Removal
* Null Handling
* Incremental Loading
* MERGE (UPSERT)
* Data Validation
* Delta Table History
* ETL Pipeline

---

# Output

Generated outputs including:

* Successfully loaded the Superstore dataset
* Created a clean customer master DataFrame
* Removed duplicate and null records
* Saved data as a Delta table
* Generated incremental customer data
* Performed MERGE operation successfully
* Updated existing customer records
* Inserted new customer records
* Validated changes using Delta table history
* Displayed the final customer master dataset

---

# Tools Used

* Apache Spark
* PySpark
* Delta Lake
* Python
* Jupyter Notebook
* CSV Files

---

# Resources

* Apache Spark Documentation
* Delta Lake Documentation
* PySpark Documentation
* Jupyter Notebook
* Sample Superstore Dataset

---

# What I Learned From This Assignment

* Understood how Delta Lake supports reliable incremental data processing.
* Learned to create and manage Delta tables using PySpark.
* Built a clean customer master table from raw data.
* Performed data cleaning by handling null values and removing duplicates.
* Simulated incremental datasets containing updated and new customer records.
* Used the **MERGE** command to implement UPSERT (update and insert) operations efficiently.
* Validated changes using Delta Lake history and record counts.
* Gained practical experience in building an end-to-end incremental ETL pipeline with Delta Lake and Spark.
