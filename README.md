📊 Assignment 1 — Python Basics & Data Exploration using Pandas
<p align="center"> <img src="https://img.shields.io/badge/Python-3.10-blue?logo=python" /> <img src="https://img.shields.io/badge/Pandas-Data%20Analysis-yellow?logo=pandas" /> <img src="https://img.shields.io/badge/Status-Completed-success" /> <img src="https://img.shields.io/badge/Type-Data%20Cleaning-orange" /> </p>
🧠 Overview

This project is my first assignment in Python & Data Analysis, focused on learning Pandas for real-world data exploration and cleaning.

I worked on an e-commerce dataset (Amazon-like product listings) and performed a complete end-to-end data cleaning pipeline — from raw CSV to final cleaned dataset.

📁 Dataset Details
Item	Description
📄 File Name	ecommerce_dataset.csv
📂 Location	DataSet/ folder
🛍️ Type	E-commerce product dataset
📊 Columns	product_id, title, category, price, discount, rating, seller info, reviews

⚠️ Some columns like discount, seller_name, videos, variations had missing values which were handled during preprocessing.

🛠️ Tech Stack
🐍 Python
📊 Pandas
📓 Jupyter Notebook
🚀 Project Workflow
🔹 1. Import Dataset
import pandas as pd
ecommerce_data = pd.read_csv("DataSet/ecommerce_dataset.csv")

✔ Data loaded into a Pandas DataFrame for analysis.

🔹 2. Data Exploration

Key functions used:

head() → preview data
tail() → last rows
shape → dataset size
columns → column names
dtypes → data types

📌 Helps understand dataset structure before processing.

🔹 3. Handling Missing Values

Checked missing data:

ecommerce_data.isnull().sum()

Filled missing values:

ecommerce_data['discount'] = ecommerce_data['discount'].fillna(0)
ecommerce_data['what_customers_said'] = ecommerce_data['what_customers_said'].fillna("No reviews")
ecommerce_data['seller_name'] = ecommerce_data['seller_name'].fillna("Unknown Seller")
ecommerce_data['videos'] = ecommerce_data['videos'].fillna("Unknown")
ecommerce_data['seller_information'] = ecommerce_data['seller_information'].fillna("[]")
ecommerce_data['variations'] = ecommerce_data['variations'].fillna("[]")
🔹 4. Filtering Data 🔍
ecommerce_data[ecommerce_data['discount'] >= 80]
ecommerce_data[ecommerce_data['rating'] >= 4.6]

Multiple conditions:

ecommerce_data[(ecommerce_data['discount'] >= 80) & (ecommerce_data['rating'] >= 4.6)]
🔹 5. Duplicate Check
ecommerce_data.duplicated().sum()

✔ No duplicates found in dataset.

🔹 6. Feature Engineering

Cleaned price column:

ecommerce_data['final_price'] = ecommerce_data['final_price'].str.replace(r'[₹,"]', '', regex=True).astype(float).astype(int)

Created new feature:

ecommerce_data['total_amount'] = ecommerce_data['final_price'] * ecommerce_data['ratings_count']
🔹 7. Save Cleaned Data
ecommerce_data.to_csv('cleaned_ecommerce_data.csv', index=False)
📤 Output Files

📄 Untitled2.ipynb → Main analysis notebook
📊 cleaned_ecommerce_data.csv → Final processed dataset

📚 Key Learnings

✔ Pandas basics for data handling
✔ Data exploration techniques
✔ Handling missing values effectively
✔ Filtering and conditional queries
✔ Data type conversion (string → numeric)
✔ Feature engineering (new column creation)
✔ Saving cleaned datasets
