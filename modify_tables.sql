-- Copy data into the table
copy superstore FROM 'C:\Users\ssabh\OneDrive\Desktop\sales_analysis_project\csv file\Superstore.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'ISO-8859-1');

SELECT *
FROM superstore