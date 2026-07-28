/*
Business Question:
What is the total revenue generated, and how many unique customers made purchases?

How The Query Works:
1. The query starts with the orders table.
2. An INNER JOIN matches each order to its corresponding product using product_id.
3. For each order, SQL multiplies the number of units sold by the product's
   unit price to calculate that order's revenue.
4. The SUM() function adds the revenue from every order to produce the total revenue.
5. The ROUND() function formats the total revenue to two decimal places.
6. COUNT(DISTINCT customer_id) counts each customer only once, regardless
   of how many orders they placed.
7. Since there is no GROUP BY clause, the aggregate functions summarize
   the entire dataset into a single row.

*/
SELECT
    ROUND(SUM(o.units * p.unit_price), 2) AS total_revenue,
    COUNT(DISTINCT o.customer_id) AS total_customers
FROM orders o
INNER JOIN products p
    ON o.product_id = p.product_id;