--Customer Demographics

SELECT 
    Customer_ID, 
    Region, 
    Segment
FROM 
    superstore
GROUP BY 
    Customer_ID, 
    Region, 
    Segment;

--Customer Segmentation by Value
UPDATE 
    Customer_Summary
SET 
    Segment = CASE 
               WHEN Total_Spend > 10000 AND Purchase_Frequency > 10 THEN 'High Value'
               WHEN Total_Spend BETWEEN 5000 AND 10000 THEN 'Medium Value'
               ELSE 'Low Value'
              END;

-- Profile Segments

SELECT 
    Segment, 
    AVG(Total_Spend)  Avg_Spend, 
    AVG(Purchase_Frequency)  Avg_Frequency
FROM 
    Customer_Summary
GROUP BY 
    Segment;
