Executive Summary:

Customer revenue is often concentrated among a small percentage of customers, making it essential to identify the company's highest-value accounts. Using SQL and Power BI, I analyzed customer purchasing behavior, calculated total customer revenue and revenue contribution, and built a dashboard to identify the top revenue-generating customers. 

Business Recommendations:
1. Develop loyalty programs and personalized offers for top revenue-generating customers.
2. Target marketing campaigns toward customers with similar purchasing behaviors as high-value customers.
3. Increase customer value through cross-selling and upselling initiatives.
4. Monitor customer revenue concentration to reduce dependency on a small number of customers.

These initiatives can improve customer retention, increase revenue, and support more informed sales and marketing decisions.

Business Problem:

Businesses need to identify which customers generate the most revenue so they can prioritize retention efforts, allocate marketing resources effectively, and reduce reliance on a small number of customers.

Methodology:

1. Used SQL to join sales and product data, calculate customer revenue, and determine each customer's percentage contribution to total revenue.
2. Built a Power BI dashboard to visualize customer rankings, revenue contribution, customer segments, and key sales KPIs.


Skills:

SQL: CTEs, Joins, Case, aggregate functions, Subqueries 

Power BI: Data Modeling, DAX Measures, KPI Cards, Interactive Dashboards, Data Visualization

Resuults
This dashboard provides an overview of customer purchasing behavior by combining monthly customer trends, customer segmentation, and top customer revenue analysis. The analysis identified a strong seasonal increase in customer activity during the final four months of the year, with customer counts consistently exceeding the yearly average. Revenue analysis showed that occasional and regular customers generated the largest share of revenue, while the top 10 customers accounted for a significant portion of total sales, highlighting opportunities to strengthen customer retention and target high-value customers with personalized marketing initiatives.







Visual 1: Monthly Customer Count vs Yearly Average

Customer activity averaged 712 customers per month. Activity remained below average from January through August before increasing sharply in September (1,177), peaking in November (1,237), and remaining strong in December (1,227), indicating a clear seasonal increase in customer demand.

<img width="1772" height="461" alt="Monthly Customer Count vs avg" src="https://github.com/user-attachments/assets/153fc775-e528-40d7-9d5f-0e2d862608fa" />







Visual 2: Top 10 Customers by Revenue

The top 10 customers generated between $237 and $352 in revenue, with the highest-ranking customer contributing 25% of total revenue. The remaining top customers each contributed between 17% and 24%, highlighting that a small group of customers accounts for a significant share of overall revenue.

<img width="826" height="525" alt="top 10 customers" src="https://github.com/user-attachments/assets/e92d0f5e-7907-411a-8ee4-9cad53d9e992" />





Visual 3: Revenue by Customer Segment



Occasional customers generated the highest revenue ($65,364), followed by Regular customers ($45,748). Loyal ($11,781) and VIP ($2,389) customers contributed a smaller share of total revenue, indicating most sales came from occasional and regular customers.

<img width="911" height="544" alt="Screenshot 2026-07-29 185735" src="https://github.com/user-attachments/assets/f29771ad-a445-4e65-87c4-5d56be989e65" />


