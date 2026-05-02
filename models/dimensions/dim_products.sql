{{ config(
    materialized = "table"
) }}

SELECT DISTINCT 
    product_name,
    category
FROM {{ ref('stg_orders') }}