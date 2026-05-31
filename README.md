Assignment 1 - Python Basics and Data Exploration using Pandas
What this assignment is about
This is my first assignment where I had to learn Python basics and use the Pandas library to explore and clean a real dataset. The dataset I used is an e-commerce dataset (like Amazon product listings) which had product names, prices, discounts, ratings, seller info, etc.

The main goal was to go through the full data cleaning process — from loading raw data to saving a final cleaned version.

Dataset used
File name: ecommerce_dataset.csv
Location: DataSet/ folder
What it contains: E-commerce product listings with columns like product ID, title, category, price, discount, rating, seller name, customer reviews, and more.
Some columns like discount, what_customers_said, seller_name, videos, seller_information, and variations had missing values which I handled in step 3.

Steps I followed
Step 1 — Loading the CSV into a DataFrame
First I imported pandas and loaded the csv file into a DataFrame called ecommerce_data.

import pandas as pd
ecommerce_data = pd.read_csv("DataSet/ecommerce_dataset.csv")
A DataFrame is basically like a table (similar to Excel) where we can do all kinds of operations on the data.

Step 2 — Exploring the Data
Before doing anything with the data, I first tried to understand what it looks like — how many rows and columns, what the column names are, and what type of data each column holds.

ecommerce_data.head()       # shows first 5 rows by default
ecommerce_data.head(2)      # we can pass any number to see that many rows
ecommerce_data.tail()       # shows last 5 rows
ecommerce_data.tail(2)

ecommerce_data.shape        # gives (number of rows, number of columns)
ecommerce_data.columns      
list(ecommerce_data.columns) # list of all column names

ecommerce_data.dtypes       # data type of each column
ecommerce_data['product_id'].dtypes   # data type of a single column
head() and tail() are useful to quickly see what the data looks like. .shape tells the size of the dataset and .dtypes is important because before doing any math operations we need to know if a column is int/float or string.

Step 3 — Handling Missing Values
This was a pretty important step. Real world datasets almost always have missing values and if we don't handle them the analysis can give wrong results or throw errors.

First I checked which columns have missing values:

ecommerce_data.isnull().sum()
Then I filled the missing values based on what made sense for each column:

ecommerce_data['discount'] = ecommerce_data['discount'].fillna(0)
# discount is numeric so filling with 0 makes sense (no discount)

ecommerce_data['what_customers_said'] = ecommerce_data['what_customers_said'].fillna('No reviews')
# if no review exists, we fill it with a placeholder text

ecommerce_data['seller_name'] = ecommerce_data['seller_name'].fillna('Unknown Seller')
# if no seller_name exists, we fill it with a placeholder text

ecommerce_data['videos'] = ecommerce_data['videos'].fillna('Unknown')

ecommerce_data['seller_information'] = ecommerce_data['seller_information'].fillna('[]')
ecommerce_data['variations'] = ecommerce_data['variations'].fillna('[]')
# filling with '[]' because these columns probably store list-type data
Note: Instead of writing ecommerce_data['column'] = ecommerce_data['column'].fillna(value) we can also use ecommerce_data['column'].fillna(value, **inplace**=True) which modifies the original dataframe directly without needing to reassign.

After filling I ran isnull().sum() again to confirm all missing values were handled.

Step 4 — Basic Operations (Filtering and Selecting)
Here I practiced filtering rows based on conditions and selecting specific columns.

Filtering rows:

# products with 80% or more discount
ecommerce_data[ecommerce_data['discount'] >= 80]

# products with rating 4.6 or above
ecommerce_data[ecommerce_data['rating'] >= 4.6]

# both conditions together using & operator
ecommerce_data[(ecommerce_data['discount'] >= 80) & (ecommerce_data['rating'] >= 4.6)]
Selecting specific columns:

ecommerce_data[['title', 'initial_price', 'final_price', 'discount']]

ecommerce_data[['product_id', 'title', 'category', 'rating', 'ratings_count']]

ecommerce_data[['seller_name', 'seller_information', 'best_offer', 'more_offers']]
Selecting only relevant columns is useful when the dataset has too many columns and we only care about a few of them.

Step 5 — Checking and Removing Duplicates
Duplicate rows can mess up analysis so it's good practice to check for them.

ecommerce_data.duplicated().sum()
In this dataset, no duplicate rows were found. But if there were any, we can remove them using:

ecommerce_data.drop_duplicates()
Step 6 — Creating a Derived Column (total_amount)
The task was to create a new column total_amount = price × quantity. In this dataset there was no separate quantity column so I used ratings_count in its place.

But there was a problem — the final_price column was stored as a string (with ₹ symbol and commas like "₹1,299.00"), not as a number. So I couldn't directly multiply it.

I had to first clean and convert it:

ecommerce_data['final_price'] = ecommerce_data['final_price'].str.replace(r'[₹,"]', '', regex=True).astype(float).astype(int)
What this line does:

.str.replace(r'[₹,"]', '', regex=True) — removes the ₹ symbol, commas, and " from the string
.astype(float) — converts the cleaned string to a float first
.astype(int) — then converts to integer
After that creating the new column was simple:

ecommerce_data['total_amount'] = ecommerce_data['final_price'] * ecommerce_data['ratings_count']
Step 7 — Saving the Cleaned Dataset
Finally I saved the cleaned dataframe as a new CSV file so the original file stays unchanged.

ecommerce_data.to_csv('cleaned_ecommerce_data.csv', index=False)
index=False means we don't want to save the row numbers (index) as a column in the CSV.

Output Files
Untitled2.ipynb Main Jupyter Notebook with all code and explanations
cleaned_ecommerce_data.csv Final cleaned dataset with the total_amount column added

Libraries Used
Pandas — for loading, exploring, cleaning and saving data
What I learned from this assignment
How to load and explore a real dataset using Pandas
How .head(), .tail(), .shape, .dtypes work and why they are useful
Why handling missing values is important and different ways to do it (fillna)
How to filter rows using conditions and select specific columns
That sometimes data looks numeric but is actually stored as a string — and how to fix that using .str.replace() and .astype()
How to create new columns from existing ones
How to save the final cleaned data as a CSV
