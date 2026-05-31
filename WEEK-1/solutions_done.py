# Objective:-

Learn Python basics and perform basic data exploration and cleaning using Pandas. Steps:

1.Load a CSV dataset into a Pandas DataFrame.

2.Explore data (head/tail, shape, columns, data types).

3.Handle missing values (identify, fill/drop).

4.Perform basic operations (filter rows, select columns).

5.Remove duplicates.

6.Create a derived column (total_amount = price * quantity).

7.Save the cleaned dataset as a new CSV file.

Output: Jupyter Notebook (.ipynb) + cleaned CSV + brief summary.

### 1.Loading the necessary Python Libraries
"""

import pandas as pd
import numpy as np

"""### 2.Loading the CSV dataset into Pandas DataFrame"""

ecommerce_data = pd.read_csv("e-commerce1_dataset.csv")
ecommerce_data

"""### 3.Explore data (head/tail, shape, columns, data types)"""

ecommerce_data.head()

"""The number of visible rows can be changed by passing any desired value in place of `x` in `head(x)`. For example, `head(10)` displays the first 10 rows of the dataset."""

ecommerce_data.head(2)

ecommerce_data.tail()

ecommerce_data.tail(2)

ecommerce_data.shape

ecommerce_data.columns

list(ecommerce_data.columns)

ecommerce_data.dtypes

"""The data type of each column can be found separately using the appropriate function or attribute"""

ecommerce_data['rating'].dtypes

ecommerce_data['product_id'].dtypes

"""### 4. Handle missing values (identify, fill/drop)"""

ecommerce_data.head(3)

ecommerce_data.isnull().sum()

ecommerce_data[['discount','what_customers_said','videos','seller_information','variations']].sample(3)

"""Instead of assigning the result back to the column using `ecommerce_data['what_customers_said'] = ecommerce_data['what_customers_said'].fillna('No reviews')`, `fillna('No reviews', inplace=True)` can also be used. With `inplace=True`, the changes are applied directly to the original dataset without needing reassignment."
"""

ecommerce_data['discount'] = ecommerce_data['discount'].fillna(0)

ecommerce_data['what_customers_said'] = ecommerce_data['what_customers_said'].fillna('No reviews')

ecommerce_data['seller_name'] = ecommerce_data['seller_name'].fillna('Unknown Seller')

ecommerce_data['videos'] = ecommerce_data['videos'].fillna('Unknown')

ecommerce_data['seller_information'] = ecommerce_data['seller_information'].fillna('[]')

ecommerce_data['variations'] = ecommerce_data['variations'].fillna('[]')

ecommerce_data.isnull().sum()

"""### 5.Perform basic operations (filter rows, select columns)"""

ecommerce_data[ecommerce_data['discount']>=80]

ecommerce_data[ecommerce_data['rating']>=4.6]

ecommerce_data[(ecommerce_data['discount']>=80) & (ecommerce_data['rating']>=4.6)]

ecommerce_data[['title','initial_price','final_price','discount']]

ecommerce_data[['product_id', 'title', 'category', 'rating', 'ratings_count']]

ecommerce_data[['seller_name', 'seller_information', 'best_offer', 'more_offers']]

"""### 6.Find and Remove the duplicates"""

ecommerce_data.duplicated().sum()

"""# No duplicate data was found in this dataset. If duplicate rows are present, they can be removed using the `drop_duplicates()` function."

### 7. Create a derived column (total_amount = price * quantity)
"""

ecommerce_data.sample()

"""To calculate the total value by multiplying `final_price` and `quantity`, both columns must have numeric data types (`int` or `float`). However, `final_price` is stored as a string, as shown in `ecommerce_data.dtypes`. Therefore, the string values are first cleaned using the `replace()` function and then converted to a numeric type using `astype()`. After the conversion, operations such as multiplication can be performed easily.

"""

ecommerce_data['final_price'] = ecommerce_data['final_price'].str.replace(r'[₹,"]','',regex=True).astype(float).astype(int)

ecommerce_data.dtypes

ecommerce_data['total_amount'] = ecommerce_data['final_price'] * ecommerce_data['ratings_count']

ecommerce_data.head()

ecommerce_data.head()

"""### 8.Saving the cleaned dataset as a new CSV file."""

ecommerce_data.to_csv('cleaned_ecommerce_data.csv', index=False)
