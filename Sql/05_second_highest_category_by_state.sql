-- 5.Find the second-highest revenue-generating product category in each seller state.
  with total_revenue_category as (select 
     s.seller_state,sum(oi.price) as total_revenue,
     p.product_category_name as product_category
from sellers s
inner join order_items oi
on s.seller_id = oi.seller_id
inner join products p
on oi.product_id = p.product_id
group by s.seller_state,p.product_category_name
),
ranked_products as (
select 
    seller_state,total_revenue,product_category,
    dense_rank() over(partition by seller_state order by total_revenue desc) as drnk
from total_revenue_category
)
select 
   seller_state,total_revenue,product_category
from ranked_products
where drnk =2;