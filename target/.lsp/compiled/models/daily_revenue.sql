

SELECT
    order_date,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM "postgres"."public"."order_details"


    WHERE order_date > (SELECT MAX(order_date) FROM "postgres"."public"."daily_revenue")


GROUP BY order_date