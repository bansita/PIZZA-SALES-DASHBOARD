SELECT * FROM pizza_sales_dup;

-- Total Revenue: The sum of the total price of all pizza orders.
SELECT SUM(total_price) AS total_revenue FROM pizza_sales_dup;

-- Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
SELECT SUM(total_price)/COUNT( DISTINCT order_id ) AS avg_order_value FROM pizza_sales_dup;

-- Total Pizzas Sold: The sum of the quantities of all pizzas sold.
SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales_dup;

-- Total Orders: The total number of orders placed.
SELECT COUNT(DISTINCT order_id) as Total_Orders from pizza_sales_dup;

-- Average Pizzas Per Order: calculated by dividing the total number of pizzas sold by the total number of orders.
SELECT CAST(SUM(quantity)/ COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
AS avg_pizzas_per_order FROM pizza_sales_dup;

-- Daily Trend for Total Orders:
SELECT DAYNAME(order_date) AS order_day ,COUNT(DISTINCT order_id) AS total_order_per_week
FROM pizza_sales_dup
GROUP BY DAYNAME(order_date);

 -- Monthly Trend for Total Orders:
 SELECT monthname(order_date) AS order_month , COUNT(DISTINCT order_id) AS  total_order_per_month
 FROM pizza_sales_dup
 GROUP BY monthname(order_date);