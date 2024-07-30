--Regional Sales Performance

SELECT 
    Region, 
    SUM(Sales)  Total_Sales, 
    COUNT(Order_ID)  Num_Orders
FROM 
    superstore
GROUP BY 
    Region
ORDER BY 
    Total_Sales DESC;

--Purchase Trends Over Time

SELECT 
    Customer_ID, 
    DATE_TRUNC('quarter', Order_Date)  Quarter, 
    SUM(Sales)  Quarterly_Spend,
    region
FROM 
    superstore
GROUP BY
    Customer_ID, 
    DATE_TRUNC('quarter', Order_Date),
    region
ORDER BY
    Quarterly_Spend DESC;

-- Product Preferences by Segment

SELECT 
    cs.Segment, 
    ss.Product_Name, 
    SUM(ss.Sales) AS Total_Sales
FROM 
    superstore ss
JOIN 
    Customer_Summary cs 
    ON ss.Customer_ID = cs.Customer_ID
GROUP BY 
    cs.Segment, 
    ss.Product_Name
ORDER BY 
    cs.Segment, 
    Total_Sales DESC;
