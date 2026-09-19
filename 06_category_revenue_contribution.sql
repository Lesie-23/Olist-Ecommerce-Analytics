-- 6. Which product categories generate the highest revenue — and what percentage of total revenue does each contribute?(Top 10)
select
   p.product_category_name,
   round(sum(oi.price),2) as total_revenue,
   round(sum(oi.price) * 100.0 / sum(oi.price) over(),2) as revenue_pct
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.product_category_name
order by total_revenue desc
limit 10;








