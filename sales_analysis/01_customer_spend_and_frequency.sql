SELECT *
FROM superstore

--Total Spend per Customer

SELECT
     Customer_ID,
     SUM(sales) Total_Spend
FROM 
    superstore
GROUP BY
    Customer_ID
ORDER BY
    Total_Spend DESC

--  Purchase Frequency per Customer

SELECT 
    Customer_ID, 
    COUNT(Order_ID)  Purchase_Frequency
FROM 
    superstore
GROUP BY 
    Customer_ID
ORDER BY
    Purchase_Frequency DESC;

-- Average Purchase Value per Customer

SELECT 
    Customer_ID, 
    AVG(Sales)  Avg_Purchase_Value
FROM 
        superstore
GROUP BY 
    Customer_ID
ORDER BY
    Avg_Purchase_Value DESC;

--Summary of Customer Spending and Frequency

CREATE TABLE Customer_Summary AS
SELECT 
    Customer_ID, 
    SUM(Sales) AS Total_Spend, 
    COUNT(Order_ID) AS Purchase_Frequency,
    AVG(Sales) AS Avg_Purchase_Value,
    MAX(Region) AS Region,
    MAX(Segment) AS Segment
FROM 
    superstore
GROUP BY 
    Customer_ID
ORDER BY
    Total_Spend DESC;

--High-Value Customers

SELECT Customer_ID, Total_Spend
FROM Customer_Summary
ORDER BY Total_Spend DESC
LIMIT (SELECT COUNT(*) FROM Customer_Summary) / 5;


