/*
Business Question:
How did sales performance change over time?

This query summarizes monthly sales performance by calculating
total revenue, and the number of customers for each
year and month. 

How the Query Works:
1. Joins the Orders and Products tables so each order can be matched with its product price.
2. Calculates Total Sales by multiplying the quantity sold by the product's unit price for every order.
3. Sums all revenue for each month.
4. Counts the number of customer purchases made during each month.
5. Groups the results by Year and Month, producing one summary row for each month.
*/
SELECT
YEAR(o.order_date) AS 'Order Year',
MONTH(o.order_date) AS 'Order Month',
SUM(o.units * p.unit_price) AS 'Total Sales',
COUNT(o.customer_id) AS 'Total Customers'
FROM orders o
INNER JOIN products p 
ON o.product_id = p.product_id
GROUP BY YEAR(o.order_date),MONTH(o.order_date)