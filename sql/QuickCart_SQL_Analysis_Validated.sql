-- QuickCart E-commerce Analytics
-- MySQL-compatible SQL
-- Validated against the QuickCart Cleaned_Data dataset (12,000 orders).
-- Existing analysis structure retained.

CREATE TABLE orders (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Order_Date DATE,
    City VARCHAR(50),
    Category VARCHAR(50),
    Sales_Channel VARCHAR(30),
    Customer_Segment VARCHAR(30),
    Payment_Method VARCHAR(30),
    Order_Status VARCHAR(30),
    Quantity INT,
    Unit_Price DECIMAL(12,2),
    Gross_Sales DECIMAL(14,2),
    Discount_Pct DECIMAL(6,2),
    Discount_Amount DECIMAL(14,2),
    Net_Sales DECIMAL(14,2),
    Cost DECIMAL(14,2),
    Profit DECIMAL(14,2),
    Delivery_Days INT,
    Customer_Rating DECIMAL(3,1)
);

-- 1. Executive KPIs
SELECT
    COUNT(*) AS total_orders,
    SUM(Order_Status='Delivered') AS delivered_orders,
    ROUND(SUM(Net_Sales),2) AS net_sales,
    ROUND(SUM(Profit),2) AS profit,
    ROUND(100*SUM(Profit)/NULLIF(SUM(Net_Sales),0),2) AS profit_margin_pct,
    ROUND(100*SUM(Order_Status='Returned')/COUNT(*),2) AS return_rate_pct
FROM orders;

-- 2. Monthly sales and profit
SELECT
    DATE_FORMAT(Order_Date,'%Y-%m') AS month,
    ROUND(SUM(Net_Sales),2) AS sales,
    ROUND(SUM(Profit),2) AS profit
FROM orders
GROUP BY DATE_FORMAT(Order_Date,'%Y-%m')
ORDER BY month;

-- 3. Category performance
SELECT
    Category,
    COUNT(*) AS orders,
    ROUND(SUM(Net_Sales),2) AS sales,
    ROUND(SUM(Profit),2) AS profit,
    ROUND(100*SUM(Profit)/NULLIF(SUM(Net_Sales),0),2) AS margin_pct
FROM orders
GROUP BY Category
ORDER BY sales DESC;

-- 4. City performance
SELECT
    City,
    COUNT(*) AS orders,
    ROUND(SUM(Net_Sales),2) AS sales,
    ROUND(AVG(Customer_Rating),2) AS avg_rating
FROM orders
GROUP BY City
ORDER BY sales DESC;

-- 5. Channel comparison
SELECT
    Sales_Channel,
    COUNT(*) AS orders,
    ROUND(SUM(Net_Sales),2) AS sales,
    ROUND(SUM(Profit),2) AS profit,
    ROUND(AVG(Delivery_Days),2) AS avg_delivery_days
FROM orders
GROUP BY Sales_Channel
ORDER BY sales DESC;

-- 6. Customer segment value
SELECT
    Customer_Segment,
    COUNT(*) AS orders,
    ROUND(SUM(Net_Sales),2) AS sales,
    ROUND(AVG(Net_Sales),2) AS avg_order_value
FROM orders
GROUP BY Customer_Segment
ORDER BY avg_order_value DESC;

-- 7. Return rate by category
SELECT
    Category,
    COUNT(*) AS orders,
    SUM(Order_Status='Returned') AS returns,
    ROUND(100*SUM(Order_Status='Returned')/COUNT(*),2) AS return_rate_pct
FROM orders
GROUP BY Category
ORDER BY return_rate_pct DESC;

-- 8. Delivery and customer satisfaction
SELECT
    Delivery_Days,
    COUNT(*) AS orders,
    ROUND(AVG(Customer_Rating),2) AS avg_rating
FROM orders
WHERE Order_Status='Delivered'
GROUP BY Delivery_Days
ORDER BY Delivery_Days;

-- 9. Top 10 city-category combinations by sales
SELECT
    City, Category,
    ROUND(SUM(Net_Sales),2) AS sales
FROM orders
GROUP BY City, Category
ORDER BY sales DESC
LIMIT 10;

-- 10. High-value orders
SELECT *
FROM orders
WHERE Net_Sales >= (SELECT AVG(Net_Sales) + 2*STDDEV(Net_Sales) FROM orders)
ORDER BY Net_Sales DESC;
