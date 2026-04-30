

SELECT
    order_id,
    customer_name,
    product_name,
    total_amount,
    
    CASE
        WHEN total_amount >= 1000 THEN 'Large'
        WHEN total_amount >= 500  THEN 'Medium'
        ELSE 'Small'
    END
 AS order_size,
    order_date
FROM "postgres"."public"."order_details"