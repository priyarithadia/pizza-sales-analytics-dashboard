
--Total Revenue
SELECT sum(total_price) as total_revenue 
from pizza_sales

-- Average Order Value
SELECT 
	(SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value 
FROM pizza_sales

--Total Pizzas Sold
SELECT 
	SUM(quantity) AS Total_pizza_sold 
FROM pizza_sales

--Total Orders
SELECT 
	COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales

--Average Pizzas Per Order
SELECT 
	CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
	AS Avg_Pizzas_per_order
FROM pizza_sales

