create database Market;
use Market;

-- 1. Top 5 Products by Average Rating
SELECT TOP 5
       p.Product_name,
       p.Category,
       ROUND(AVG(r.Rating),2) AS Avg_Rating,
       COUNT(r.Review_id)      AS Total_Reviews
FROM Products      AS p
JOIN Customer_review   AS r
     ON p.Product_id = r.Product_id
GROUP BY p.Product_id, p.Product_name, p.Category
HAVING COUNT(r.Review_id) >= 5
ORDER BY Avg_Rating DESC;

-- 2. Most Common Drop-Off Stage
SELECT
    Stage,
    COUNT(*) AS Dropoff_Count
FROM Customer_Journey
WHERE Action = 'Drop-off'
GROUP BY Stage
ORDER BY Dropoff_Count DESC;

-- 3. City-Wise Active Customers (Age 18–35)
SELECT 
    co.city,
    co.country_name,
    COUNT(DISTINCT cu.customer_id) AS active_customers
FROM customers cu
JOIN countries co 
      ON cu.location_id = co.country_id
WHERE cu.age BETWEEN 18 AND 35
GROUP BY co.city, co.country_name
ORDER BY active_customers DESC;

-- 4. Customers and Their Latest Journey Stage
SELECT 
    c.customer_id,
    c.customer_name,
    j.stage,
    j.visitdate
FROM customers c
JOIN customer_journey j 
      ON c.customer_id = j.customer_id
WHERE j.visitdate = (
    SELECT MAX(j2.visitdate)
    FROM customer_journey j2
    WHERE j2.customer_id = c.customer_id
);

-- 5. Average Rating per Product (Only Products with =10 Reviews)
SELECT 
    p.product_id,
    p.product_name,
    AVG(r.rating) AS avg_rating,
    COUNT(r.review_id) AS review_count
FROM products p
JOIN customer_review r 
      ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(r.review_id) >= 10;
