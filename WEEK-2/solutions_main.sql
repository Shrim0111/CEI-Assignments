-- Create Database
create database superstore;

-- Select the database 
use superstore;

 -- 1.Load dataset into a SQL database.
      -- Open the database and find the Schemas tab on the left.Right-click the database name and click Table Data Import Wizard. Select the CSV file.
SELECT * FROM superstore.`sample _superstore`; -- this will display all the columns of the CSV File

-- 2.Explore table (schema, sample data). 
DESCRIBE superstore.`sample _superstore`;

SELECT * FROM superstore.`sample _superstore`
LIMIT 5;

-- Since 'Order' and 'Date' are keywords IN MySql. I have renamed some columns due to error 
ALTER TABLE `sample _superstore`
RENAME COLUMN `Row ID` TO row_id;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Order ID` TO order_id;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Order Date` TO order_date;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Ship Date` TO ship_date;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Ship Mode` TO ship_mode;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Customer ID` TO customer_id;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Customer Name` TO customer_name;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Postal Code` TO postal_code;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Product ID` TO product_id;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Sub-Category` TO sub_category;

ALTER TABLE `sample _superstore`
RENAME COLUMN `Product Name` TO product_name;

-- 3.Apply WHERE filters (region, category, date, sales). 
SELECT * FROM superstore.`sample _superstore`
WHERE Region = 'South';

SELECT * FROM superstore.`sample _superstore`
WHERE Category = 'Office Supplies';

SELECT * FROM superstore.`sample _superstore`
WHERE Sales > 3500;

SELECT * FROM superstore.`sample _superstore`
WHERE order_date BETWEEN '11/8/2014' and '11/8/2017';

-- 4.Use GROUP BY for aggregations (sales, quantity, averages). 
SELECT Category,
       ROUND(SUM(Sales)) AS Total_Sales,
       ROUND(AVG(Sales)) AS Avg_Sales,
       ROUND(SUM(Quantity)) AS Total_Quantity,
       ROUND(SUM(Profit)) AS Total_Profit,
       ROUND(AVG(Profit)) AS Avg_Profit
FROM superstore.`sample _superstore`
GROUP BY Category;

-- 5.Sort and limit results (top products, top categories). 
     -- Top 3 Products
	SELECT product_name,
       SUM(Sales) AS Total_Sales,
       ROUND(SUM(Profit)) AS Total_Profit
    FROM superstore.`sample _superstore`
    GROUP BY product_name
    ORDER BY Total_Sales DESC
    LIMIT 3;

    -- TOP Categories
    SELECT Category,
       SUM(Profit) AS Total_Profit,
       SUM(Sales) AS Total_Sales
    FROM superstore.`sample _superstore`
    GROUP BY Category
    ORDER BY Total_Profit DESC;

-- 6.Solve Use Cases (Monthly Trends, Top Customers, Duplicates).
    -- Monthly Trends
    

    -- TOP 5 Customers 
    SELECT Customer_Name,
       SUM(Sales) AS Total_Sales
    FROM superstore.`sample _superstore`
    GROUP BY Customer_Name
    ORDER BY Total_Sales DESC
    LIMIT 5;
    -- TOP 5 Profitable customers
    SELECT Customer_Name,
       SUM(Profit) AS Total_Profit
	FROM superstore.`sample _superstore`
    GROUP BY Customer_Name
    ORDER BY Total_Profit DESC
    LIMIT 5;

-- Duplicate entries can be written in one row
SELECT product_id,order_id,
       COUNT(*) AS Duplicate_Count
FROM superstore.`sample _superstore`
GROUP BY product_id,order_id
HAVING COUNT(*) > 1;

-- 7.Validate results (row counts, data quality). 
SELECT Category,
    COUNT(*) AS Total_Rows,
    COUNT(Order_ID) AS OrderID_NotNull,
    COUNT(Customer_Name) AS Customer_NotNull,
    SUM(Quantity) AS qua_NotNull
FROM superstore.`sample _superstore`
GROUP BY Category;

SELECT *
FROM superstore.`sample _superstore`
WHERE Profit < 0;

SELECT * 
FROM superstore.`sample _superstore`
WHERE Discount > 0.5;

SELECT COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM superstore.`sample _superstore`;





