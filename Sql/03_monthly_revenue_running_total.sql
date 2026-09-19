-- 3.Calculate monthly revenue and the running total of revenue for each month.
with monthly_revenue as 
(select
   date_format(o.order_purchase_timestamp, '%Y-%m') as month,
   round(sum(oi.price),2) as total_revenue
from order_items oi
inner join orders o
on oi.order_id = o.order_id
group by date_format(o.order_purchase_timestamp, '%Y-%m')
)
select month, total_revenue,
round(sum(total_revenue) over( order by month),2) as running_total
from monthly_revenue;