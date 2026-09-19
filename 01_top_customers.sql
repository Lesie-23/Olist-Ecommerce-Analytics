-- 1 Find the top 5 customers by total payment value.
select 
    o.customer_id, sum(p.payment_value) as total_payment 
from orders o
inner join order_payments p
on o.order_id = p.order_id
group by o.customer_id
order by total_payment  desc
limit 5;