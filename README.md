📊 Assignment 1 - Python Basics and Data Exploration using Pandas
🧠 Overview

This project is my first assignment focused on learning Python basics and using the Pandas library for real-world data exploration and cleaning.

The dataset used is an e-commerce dataset (similar to Amazon product listings) containing information such as product titles, prices, discounts, ratings, seller details, and customer reviews.

The main objective was to perform a complete data cleaning workflow — from loading raw data to generating a cleaned dataset.

📁 Dataset Information
File Name: ecommerce_dataset.csv
Location: DataSet/ folder
Description: Contains e-commerce product listings with columns such as:
product_id
title
category
price / final_price
discount
rating
ratings_count
seller_name
customer reviews
variations, videos, seller_information (with missing values)
🛠️ Libraries Used
Python 🐍
Pandas 📊
🚀 Steps Performed
🔹 Step 1: Loading the Dataset

The dataset was loaded using Pandas:

import pandas as pd
ecommerce_data = pd.read_csv("DataSet/ecommerce_dataset.csv")

A DataFrame represents data in a table-like structure, similar to Excel.

🔹 Step 2: Exploring the Data

Basic exploration was performed using:

head() / tail() → preview data
shape → dataset dimensions
columns → list column names
dtypes → data types of each column

These steps help understand the structure of the dataset before analysis.

🔹 Step 3: Handling Missing Values

Missing values were identified using:

ecommerce_data.isnull().sum()

They were handled using appropriate strategies:

discount → filled with 0
what_customers_said → filled with "No reviews"
seller_name → filled with "Unknown Seller"
videos → filled with "Unknown"
seller_information, variations → filled with "[]"

This ensured clean and consistent data for analysis.

🔹 Step 4: Data Filtering & Selection

Filtering was applied to extract meaningful insights:

ecommerce_data[ecommerce_data['discount'] >= 80]
ecommerce_data[ecommerce_data['rating'] >= 4.6]

Multiple conditions:

ecommerce_data[(ecommerce_data['discount'] >= 80) & (ecommerce_data['rating'] >= 4.6)]

Selected important columns for focused analysis:

ecommerce_data[['title', 'initial_price', 'final_price', 'discount']]
🔹 Step 5: Removing Duplicates

Checked for duplicate entries:

ecommerce_data.duplicated().sum()

No duplicates were found in this dataset.

🔹 Step 6: Creating a Derived Column

A new column total_amount was created:

First, cleaned final_price (removed ₹, commas, etc.)
Converted it into numeric format
ecommerce_data['final_price'] = ecommerce_data['final_price'].str.replace(r'[₹,"]', '', regex=True).astype(float).astype(int)

Then created:

ecommerce_data['total_amount'] = ecommerce_data['final_price'] * ecommerce_data['ratings_count']
🔹 Step 7: Saving Cleaned Dataset

The final cleaned dataset was saved as:

ecommerce_data.to_csv('cleaned_ecommerce_data.csv', index=False)
📤 Output Files
Untitled2.ipynb → Main Jupyter Notebook with all code
cleaned_ecommerce_data.csv → Final cleaned dataset
📚 Key Learnings
Loading and exploring datasets using Pandas
Understanding .head(), .shape, .dtypes, .columns
Handling missing values using fillna()
Filtering and selecting data efficiently
Converting string data to numeric format
Creating derived columns
Saving processed data into CSV format
