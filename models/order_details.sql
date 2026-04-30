{{ config(materialized='table') }}

SELECT
    o.id AS order_id,
    c.name AS customer_name,
    p.name AS product_name,
    p.price,
    o.quantity,
    p.price * o.quantity AS total_amount,
    o.order_date
FROM {{ source('raw', 'orders') }} o
JOIN {{ source('raw', 'customers') }} c ON o.customer_id = c.id
JOIN {{ source('raw', 'products') }} p ON o.product_id = p.id