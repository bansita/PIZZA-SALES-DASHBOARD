# PIZZA-SALES-DASHBOARD — Power BI + MySQL Project

This project features an interactive "Pizza Sales Dashboard" developed using "Power BI" and "MySQL". It provides meaningful insights into sales trends, customer preferences, and product performance for a fictional pizza business. The dashboard is designed to support data-driven decision-making through clean visuals and key metrics.

---

## 📊 Tools & Technologies Used

- "MySQL Server" — for querying, aggregating, and calculating KPIs  
- "Power BI Desktop" — for building interactive visualizations and dashboards  
- "Excel/CSV" — used for importing and formatting the raw data  

---

## 📁 Dataset Overview

- File Name: `pizza_sales.csv`  
- Rows: ~48,000+
- Columns: `order_id`, `order_date`, `pizza_id`, `pizza_name`, `pizza_category`, `pizza_size`, `quantity`, `unit_price`, `total_price`  
- Source: Self-curated dataset created for analytical practice and visualization  

---

## 🔍 Key Business Questions Answered

1. What is the "total revenue", "total number of orders", and "average order value"?  
2. How do daily and monthly order trends look over time?  
3. Which pizza "categories" and "sizes" contribute most to sales?  
4. What are the "top 5" and "bottom 5" best-selling pizzas by revenue, quantity, and order volume?  

---

## 📌 KPIs and Metrics Calculated

- 🧾 "Total Revenue"  
- 📦 "Total Pizzas Sold"  
- 🛒 "Total Orders"  
- 💸 "Average Order Value (AOV)"  
- 🍕 "Average Pizzas per Order"  

> These key metrics were computed using SQL and later visualized using Power BI cards, slicers, and filters.

---

## 📈 Visualizations in the Dashboard

- "KPI Cards" — Total Revenue, Orders, AOV, and Pizza Quantity  
- "Bar Charts" — Top & Bottom 5 Pizzas by Revenue, Quantity, and Order Count  
- "Pie Charts" — % Sales by Category and Size  
- "Line Charts" — Daily and Monthly Order Trends  
- "Stacked Column Chart" — Pizza Category vs Quantity Sold
- Page Navigation Buttons — Easily navigate between the "Home Page", "Best Sellers/Worst Sellers Page" using custom buttons for a smooth user experience

---

## 💻 SQL Query Highlight

Here is an example of one of the SQL queries used to generate KPIs:

```sql
-- Total Revenue
SELECT SUM(total_price) AS total_revenue FROM pizza_sales_dup;

--All SQL queries used in the project are available in the pizza_sales_queries.sql file.
