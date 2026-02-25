-- =====================================================
-- TASK 6: Sales Trend Analysis Using Aggregations
-- Tool Used: SQLite
-- Objective: Analyze monthly revenue and order volume
-- =====================================================


-- 1️⃣ Create Table
DROP TABLE IF EXISTS online_sales;

CREATE TABLE online_sales (
    order_id INTEGER,
    order_date TEXT,
    amount REAL,
    product_id INTEGER
);


-- 2️⃣ Insert Sample Data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-05', 500, 101),
(2, '2023-01-15', 700, 102),
(3, '2023-02-10', 300, 103),
(4, '2023-02-18', 900, 101),
(5, '2023-03-02', 400, 104),
(6, '2023-03-15', 800, 102),
(7, '2023-04-08', 1000, 105),
(8, '2023-04-20', 650, 103),
(9, '2023-05-12', 1200, 101),
(10, '2023-05-25', 750, 104);


-- 3️⃣ View Sample Data
SELECT * FROM online_sales;


-- 4️⃣ Monthly Revenue and Order Volume Analysis
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;


-- 5️⃣ Filtered Trend for Specific Year (2023)
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE strftime('%Y', order_date) = '2023'
GROUP BY year, month
ORDER BY month;