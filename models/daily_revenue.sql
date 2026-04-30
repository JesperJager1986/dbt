{{ config(materialized='incremental', unique_key='order_date') }}

SELECT
    order_date,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM {{ ref('order_details') }}

{% if is_incremental() %}
    WHERE order_date > (SELECT MAX(order_date) FROM {{ this }})
{% endif %}

GROUP BY order_date