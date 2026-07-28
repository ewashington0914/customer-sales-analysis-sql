/*
Business Question:
How does monthly customer activity compare to the yearly average,
and is customer activity increasing or decreasing from month to month?

Objective:
This query analyzes monthly customer trends by calculating the average
number of customers per month within each year, measuring how far each
month differs from the yearly average, and comparing each month to the
previous month.

How The Query Works:
1. A Common Table Expression (CTE) calculates the total number of
   customer orders for each month.
2. AVG() OVER(PARTITION BY order_year) calculates the average monthly
   customer count for each year.
3. The query measures the difference between each month's customer
   count and the yearly average.
4. A CASE statement classifies each month as Above Average,
   Below Average, or Average.
5. LAG() retrieves the previous month's customer count.
6. The query calculates the month-over-month change in customers.
*/

WITH MonthlyCustomers AS (
    SELECT
        YEAR(order_date) AS order_year,
        MONTH(order_date) AS order_month,
        COUNT(customer_id) AS customer_count
    FROM orders
    GROUP BY
        YEAR(order_date),
        MONTH(order_date)
)

SELECT
    order_year,
    order_month,
    customer_count,
AVG(customer_count) OVER (PARTITION BY order_year) AS yearly_avg_customers,
 customer_count - AVG(customer_count) OVER ( PARTITION BY order_year) AS difference_from_yearly_avg,
 CASE 
 WHEN  customer_count - AVG(customer_count) OVER ( PARTITION BY order_year) > 0 THEN 'Above Average'
 WHEN  customer_count - AVG(customer_count) OVER ( PARTITION BY order_year) < 0 THEN 'Below Average'
 ELSE 'Average' END AS avg_change,
 LAG(customer_count)  OVER (PARTITION BY order_year ) AS previous_customers,
  customer_count - LAG(customer_count)  OVER (PARTITION BY order_year ) AS customer_cnt_diff
 FROM MonthlyCustomers
    
 ORDER BY 
 order_year,
 order_month