-- 10. What is the average review score by delivery delay bucket — and at what point does customer satisfaction drop significantly?
SELECT
    delay_bucket,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(AVG(review_score), 2) AS avg_review_score
FROM (
    SELECT
        o.order_id,
        r.review_score,
        CASE
            WHEN o.order_delivered_customer_date IS NULL THEN 'Not Delivered'
            WHEN o.order_delivered_customer_date <= o.order_estimated_delivery_date THEN 'On Time'
            WHEN DATEDIFF(o.order_delivered_customer_date,o.order_estimated_delivery_date) BETWEEN 1 AND 3 THEN '1-3 Days Late'
            WHEN DATEDIFF(o.order_delivered_customer_date,o.order_estimated_delivery_date) BETWEEN 4 AND 7 THEN '4-7 Days Late'
            ELSE '8+ Days Late' END AS delay_bucket
    FROM orders o
    INNER JOIN reviews r
        ON o.order_id = r.order_id
) AS delivery_analysis
GROUP BY delay_bucket
ORDER BY
    CASE delay_bucket
        WHEN 'On Time' THEN 1
        WHEN '1-3 Days Late' THEN 2
        WHEN '4-7 Days Late' THEN 3
        WHEN '8+ Days Late' THEN 4
        WHEN 'Not Delivered' THEN 5
    END;