/*
KPIS
*/
SELECT
    ROUND(SUM(o.units * p.unit_price), 2) AS total_revenue,
    COUNT(DISTINCT o.customer_id) AS total_customers
FROM orders o
INNER JOIN products p
    ON o.product_id = p.product_id;