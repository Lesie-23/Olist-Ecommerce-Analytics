-- 8.What is the overall repeat purchase rate — what percentage of customers placed more than one order?
with customer_orders as (
  select 
    c.customer_unique_id,
    count(distinct o.order_id) as total_orders
from customers c
inner join orders o
on c.customer_id = o.customer_id
group by c.customer_unique_id
)
select 
   round(
      count(case when total_orders > 1 then 1 end) * 100.0 / count(*),2) as repeat_purchase_rate
from customer_orders;
