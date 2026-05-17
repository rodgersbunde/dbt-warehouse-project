{{ config(
    materialized = "table"
) }}

SELECT DISTINCT 
    product_id,
    product_name,
    category,
	order_id
FROM {{ ref('products') }}