{{ config(materialized='table') }}

SELECT
    order_id,
    customer_name,
    product_name,
    total_amount,
    {{ classify_order('total_amount') }} AS order_size,
    order_date
FROM {{ ref('order_details') }}