-- Q2. What is the month-on-month revenue trend from 2017 to 2018 — and what is the growth rate between months?
With monthly_revenue as (
     select
        DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')  AS order_month,
        round(sum(oi.price),2) as total_revenue
	 from orders o
     inner join order_items oi
     on o.order_id = oi.order_id
     where year(o.order_purchase_timestamp) in (2017,2018)
     group by DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
),
prev_monthly_revenue as (
  select 
    order_month, total_revenue,
    round(lag(total_revenue) over(order by order_month),2) as prev_month,
    round((total_revenue - lag(total_revenue) over(order by order_month)) * 100.0 / nullif(lag(total_revenue) over(order by order_month),0),2) as growth_rate
 from monthly_revenue
 )
select 
    order_month, total_revenue, prev_month,growth_rate
from prev_monthly_revenue
order by order_month;









