# E-Commerce Order Analytics System
**Intern Mini Project — Week 8**  
**Skills:** Python, SQL, SQLite, Data Cleaning, Problem Solving

## Project Overview

This project demonstrates an end-to-end data engineering workflow for an e-commerce business. It starts by generating synthetic order data with intentional quality issues, cleans and validates the data, stores it in a relational SQLite database, and performs business analysis using SQL. The project concludes with an interactive command-line reporting tool that provides on-demand business insights.

The complete workflow follows four major stages:

- Generate realistic but intentionally messy data
- Clean and validate the datasets
- Load the cleaned data into SQLite and perform SQL analysis
- Generate interactive reports using a CLI application

---

# 1. Problem Statement

Operational data collected from real-world systems is rarely perfect. Missing values, inconsistent formats, invalid entries, and duplicate representations are common challenges.

This project recreates those scenarios by generating four interconnected datasets:

- Customers
- Orders
- Order Items
- Products

Each dataset intentionally contains realistic data quality problems. The objective is to detect these issues, clean or validate them appropriately, preserve useful information wherever possible, and then perform meaningful business analysis on the cleaned data.

The overall workflow closely resembles a real-world data engineering pipeline.

---

# 2. Project Structure

```text
Week_08_Assignment/
│
├── scripts/
│   ├── cust_gen.py
│   ├── order_gen.py
│   ├── order_items_gen.py
│   ├── product_gen.py
│   ├── clean_data.ipynb
│   ├── build_database.py
│   └── CLI_report.py
│
├── sql/
│   └── all_queries.sql
│
├── data/
│   ├── raw/
│   └── cleaned/
│
└── ecommerce.db
```

### Directory Description

| Folder/File | Purpose |
|-------------|---------|
| scripts/ | Contains data generation, cleaning, database loading, and reporting scripts |
| sql/ | SQL queries used for business analysis |
| data/raw/ | Original generated CSV files |
| data/cleaned/ | Cleaned datasets used throughout the remaining pipeline |
| ecommerce.db | SQLite database generated after loading cleaned data |

Each table contains **500 records**, forming a compact transactional model where:

- **Orders** and **Order Items** represent transactional data.
- **Customers** and **Products** serve as reference (dimension) tables.

---

# 3. Stage 1 – Synthetic Data Generation

Each dataset is created independently using the **Faker** library. During generation, realistic data quality issues are intentionally introduced to simulate production environments.

| Dataset | Script | Injected Data Issue |
|----------|--------|--------------------|
| customers.csv | cust_gen.py | 10 invalid email addresses |
| orders.csv | order_gen.py | 25 missing customer IDs and 15 dates stored in DD-MM-YYYY format |
| order_items.csv | order_items_gen.py | 15 negative quantities representing returned items |
| products.csv | product_gen.py | 20 product names with inconsistent capitalization and extra spaces |

These issues represent common production problems such as:

- Invalid user inputs
- Missing foreign keys
- Multiple date formats
- Formatting inconsistencies
- Business events represented inconsistently

---

# 4. Stage 2 – Data Cleaning (`clean_data.ipynb`)

Instead of blindly removing problematic records, each issue is handled based on its business significance.

### Orders

**Date Standardization**

The dataset contains two date formats:

- YYYY-MM-DD
- DD-MM-YYYY

A flexible parser converts both into a single standardized datetime format without losing information.

---

### Missing Customer IDs

Orders with missing customer IDs are **not deleted** because doing so would reduce overall order counts.

Instead:

- Missing values are replaced with **0**
- The column is converted to a nullable integer type

This keeps the transaction while clearly identifying unknown customers.

---

### Product Name Standardization

Product names are cleaned by:

- Removing extra spaces
- Converting text to Title Case

For example:

```
"  KEYBOARD  "
"keyboard"
"Keyboard"
```

All become:

```
Keyboard
```

This prevents duplicate product names from appearing separately in aggregation queries.

---

### Email Validation

Customer emails are validated using a regular expression following the pattern:

```
something@something.something
```

Rather than modifying incorrect email addresses, the project creates a Boolean flag indicating whether each email is valid.

This preserves the original data while making quality issues visible.

---

### Referential Integrity Check

Every `order_id` in **order_items.csv** is compared against the Orders table.

This identifies orphan records that reference orders which do not exist, helping detect partial writes or failed upstream joins.

---

The cleaned outputs are stored inside:

```text
data/cleaned/
```

Only these cleaned datasets are used in the remaining stages.

---

# 5. Stage 3 – Database Loading & SQL Analysis

## Database Loading (`build_database.py`)

The cleaned CSV files are imported into a single SQLite database named:

```
ecommerce.db
```

Each CSV becomes its own relational table.

SQLite was selected because:

- No database server is required
- The entire database exists as a single portable file
- SQL queries can easily be migrated to databases like PostgreSQL or MySQL with minimal modifications

---

## SQL Business Analysis (`sql/all_queries.sql`)

The project contains **16 SQL queries**, progressing from basic reporting to advanced analytical techniques.

### Basic Analysis

1. Total revenue by product category
2. Top 10 customers by revenue
3. Monthly order count over the previous 12 months

---

### Intermediate Analysis

4. Customers who placed orders but never received deliveries
5. Products with more returns than purchases
6. Return percentage for each category

---

### Advanced Analysis (CTEs & Window Functions)

7. Running revenue total by region over time
8. Product ranking within each category using `DENSE_RANK()`
9. Average time between customer purchases with "At Risk" customer identification
10. Customer segmentation into High, Medium, and Low spenders using multiple CTEs
11. Customer lifetime value segmentation using `NTILE()`
12. Year-over-year monthly revenue comparison
13. First purchased category versus most recent category for each customer
14. Cumulative revenue contribution showing revenue generated by the highest-value customers
15. Monthly customer cohort retention analysis
16. Frequently purchased product pairs using self joins

---

### Revenue Calculation

Revenue throughout the project is calculated as:

```text
Revenue = Quantity × Unit Price × (1 − Discount Percent / 100)
```

The discount value is stored as a whole percentage (for example, **25** rather than **0.25**), making the division by 100 an essential step before calculating revenue.

---

# 6. Stage 4 – Interactive Reporting Tool (`CLI_report.py`)

The project includes a command-line reporting utility that enables users to generate business summaries without manually writing SQL queries.

The application:

- Accepts a reporting period (daily, weekly, or monthly)
- Allows users to specify a custom date range
- Displays:
  - Total orders
  - Total revenue
  - Unique customers
  - Top three products by revenue
- Automatically compares the selected period with the immediately preceding period of identical length
- Calculates percentage changes for:
  - Orders
  - Revenue

Instead of comparing against a fixed interval such as the same month last year, the tool always compares with the previous period of equal duration, ensuring a fair performance comparison regardless of the chosen date range.

Run the application using:

```bash
python scripts/CLI_report.py
```

---

# 7. Running the Complete Pipeline

### Stage 1 – Generate Raw Data

```bash
python scripts/cust_gen.py
python scripts/order_gen.py
python scripts/order_items_gen.py
python scripts/product_gen.py
```

---

### Stage 2 – Clean the Data

Open and execute every cell in:

```text
scripts/clean_data.ipynb
```

The notebook generates cleaned datasets inside:

```text
data/cleaned/
```

---

### Stage 3 – Build the Database

```bash
python scripts/build_database.py
```

---

### Execute SQL Analysis

```bash
sqlite3 ecommerce.db < sql/all_queries.sql
```

---

### Stage 4 – Generate Reports

```bash
python scripts/CLI_report.py
```
