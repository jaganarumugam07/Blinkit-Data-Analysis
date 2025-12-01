# 1. Data Cleaning Queries

## 1.1 Cleaning Item_Fat_Content

UPDATE blinkit_data
SET Item_Fat_Content = 
    CASE 
        WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg' THEN 'Regular'
        ELSE Item_Fat_Content
    END;

##1.2 Validate Cleaning
SELECT DISTINCT Item_Fat_Content
FROM blinkit_data;
