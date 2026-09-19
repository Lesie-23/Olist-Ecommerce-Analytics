-- 9.What is the on-time delivery rate by customer state — which states receive the worst service among states with at least 50 orders? (Top 10 worst)
SELECT
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT CASE
        WHEN o.order_delivered_customer_date
             <= o.order_estimated_delivery_date
        THEN o.order_id
    END) AS on_time_orders,
    ROUND(
        COUNT(DISTINCT CASE
            WHEN o.order_delivered_customer_date
                 <= o.order_estimated_delivery_date
            THEN o.order_id
        END) * 100.0
        / COUNT(DISTINCT o.order_id),
        2
    ) AS on_time_delivery_rate
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
HAVING COUNT(DISTINCT o.order_id) >= 50
ORDER BY on_time_delivery_rate ASC
LIMIT 10;
  