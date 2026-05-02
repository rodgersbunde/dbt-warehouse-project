{{ config(
materialized='view') 
}}

SELECT DISTINCT
	customer_id,
	customer_name,
	customer_country AS country
FROM {{source('raw','customers') }}