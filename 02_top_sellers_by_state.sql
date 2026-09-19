-- 2.Find the top 3 sellers by revenue within each seller state. need to solve again
with seller_revenue as (
select
    s.seller_id,s.seller_state,round(sum(oi.price),2) as total_revenue
from sellers s
inner join  order_items oi
on s.seller_id = oi.seller_id
group by s.seller_id,s.seller_state
),
ranked_sellers as(
   select 
     seller_id,seller_state,total_revenue,
     dense_rank() over(partition by seller_state order by total_revenue desc) as drnk
	from seller_revenue
)
select seller_id,seller_state,total_revenue,drnk
from ranked_sellers
where drnk <= 3;