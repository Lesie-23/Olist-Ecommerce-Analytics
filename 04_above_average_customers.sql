-- 4. Find customers whose total spending is greater than the average customer spending.
with customers_total_spend as 
(select
    o.customer_id,
    sum(p.payment_value) as total_spent
from orders o
inner join order_payments p
on o.order_id = p.order_id
group by o.customer_id
)
select customer_id, total_spent
from customers_total_spend
where total_spent > (select avg(total_spent) from customers_total_spend);