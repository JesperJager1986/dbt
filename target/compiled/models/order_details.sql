

SELECT
    o.id AS order_id,
    c.name AS customer_name,
    p.name AS product_name,
    p.price,
    o.quantity,
    p.price * o.quantity AS total_amount,
    o.order_date
FROM "postgres"."public"."orders" o
JOIN "postgres"."public"."customers" c ON o.customer_id = c.id
JOIN "postgres"."public"."products" p ON o.product_id = p.id