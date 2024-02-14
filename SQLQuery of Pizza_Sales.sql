select sum(total_price) as total_revenue from pizza_sales;
select sum(total_price) as total_revenue from pizza_sales;
select sum(quantity) as Total_pizza_sold from pizza_sales;
select sum(quantity) as Total_pizza_sold from pizza_sales;
select cast(Cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal(10,2)) As DECIMAL(10,2)) AS Avg_Pizza_per_Order from pizza_sales;
select datename(dw, order_date) as order_day, count(distinct order_id) as Total_orders
from pizza_sales
group by datename(dw, order_date);
select datename(month, order_date) as Month_Name, count(distinct order_id) as total_orders
from pizza_sales
group by datename(MONTH, order_date)
order by Total_orders desc
select pizza_category, sum(total_price) as total_sales, sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales where month(order_date) = 1) as PCT
from pizza_sales
where month(order_date) = 1
group by pizza_category
select pizza_size, cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales) as decimal(10,2)) PCT 
From pizza_sales
group by pizza_size
order by PCT DESC
select pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue DESC
select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue DESC
select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue asc
select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity desc
select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity asc


