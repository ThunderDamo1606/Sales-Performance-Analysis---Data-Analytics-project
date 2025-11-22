
CREATE DATABASE SalesProject;
USE SalesProject;

drop table orders;

select * from List_Of_Orders;
select * from sales_target;
select * from order_details;
select * from query1;


# Select specific columns in list_of_orders  file
SELECT order_id, customer_name, state FROM list_of_orders;

# Remove duplicates (DISTINCT) its show uniques
SELECT DISTINCT state FROM list_of_orders;

# Sorting (ORDER BY) is show customer_name in asendeing order
SELECT customer_name, state 
FROM list_of_orders
ORDER BY customer_name ASC;

# Filtering rows (WHERE) its given speciphic name
SELECT * 
FROM list_of_orders
WHERE state = 'Maharashtra';

# Count total rows in flolder
SELECT COUNT(*) FROM list_of_orders;


#  LIKE (Pattern search) 
SELECT *
FROM list_of_orders
WHERE customer_name LIKE 'A%';


# Convert your order_date (string) to real date
SELECT 
    STR_TO_DATE(order_date, '%m/%d/%Y') AS real_date
FROM list_of_orders;


---------------------------------------------------------------------------------------------------------


# Sum total amount (SUM) in order_details
SELECT SUM(amount) AS total_sales
FROM order_details;


# Average, Min, Max sales  in order_details table
SELECT 
    AVG(amount) AS avg_sales,
    MIN(amount) AS min_sale,
    MAX(amount) AS max_sale
FROM order_details;


# Total sales per category 
SELECT 
    category,
    SUM(amount) AS total_sales
FROM order_details
GROUP BY category;



-----------------------------------------------------------------------------------



#  1. Total Sales Per Region (State)

SELECT 
    o.State,
    SUM(d.Amount) AS Total_Sales
FROM list_of_orders o
JOIN order_details d
    ON o.Order_ID = d.`Order ID`
GROUP BY o.State
ORDER BY Total_Sales DESC;


-------------------------------------------------------------------------------------------


# 2. Top 5 Best-Selling Products

SELECT 
    d.`Sub-Category`,
    SUM(d.Quantity) AS Total_Quantity,
    SUM(d.Amount) AS Total_Sales
FROM order_details d
GROUP BY d.`Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 5;


-------------------------------------------------------------------------------------------


# 3. Monthly Revenue

SELECT 
    DATE_FORMAT(STR_TO_DATE(o.Order_Date, '%m/%d/%Y'), '%Y-%m') AS Month,
    SUM(d.Amount) AS Revenue
FROM list_of_orders o
JOIN order_details d
    ON o.Order_ID = d.`Order ID`
GROUP BY Month
ORDER BY Month;


-----------------------------------------------------------------------------------------------------------


# 4. Repeat Customers

SELECT 
    Customer_Name,
    COUNT(*) AS Total_Orders
FROM list_of_orders
GROUP BY Customer_Name
HAVING Total_Orders > 1
ORDER BY Total_Orders DESC;


-----------------------------------------------------------------------------------------------------------


# 5. Average Order Value Per State

SELECT  State,
    AVG(OrderTotal) AS Avg_Order_Value
FROM (   SELECT o.Order_ID, o.State,
        SUM(d.Amount) AS OrderTotal
    FROM list_of_orders o
    JOIN order_details d
        ON o.Order_ID = d.`Order ID`
    GROUP BY o.Order_ID, o.State
) t
GROUP BY State
ORDER BY Avg_Order_Value DESC;


------------------------------------------------------------------------------------------------------------


# 6. Rank Products by Category

SELECT
    Category,
    `Sub-Category`,
    SUM(Amount) AS Total_Sales,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Amount) DESC) AS Rank_In_Category
FROM order_details
GROUP BY Category, `Sub-Category`
ORDER BY Category, Rank_In_Category;

----------------------------------------------------------------------------------------


