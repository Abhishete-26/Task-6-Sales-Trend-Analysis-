# 📊 Task 6: Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze monthly revenue and order volume using SQL aggregation functions.

---

## 🛠 Tools Used
- SQLite
- DB Browser for SQLite
- GitHub

---

## 📂 Dataset
Table Name: `online_sales`

Columns:
- order_id (INTEGER)
- order_date (TEXT)
- amount (REAL)
- product_id (INTEGER)

---

## 🔍 SQL Concepts Used
- GROUP BY
- SUM()
- COUNT(DISTINCT)
- strftime() for month/year extraction
- ORDER BY
- WHERE filter

---

## 📈 Monthly Revenue & Order Volume Query

```sql
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- Analysis Summary:
-- Monthly revenue calculated using SUM()
-- Order volume calculated using COUNT(DISTINCT)
-- Data grouped by year and month
