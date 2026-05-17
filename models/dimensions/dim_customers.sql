{{ config(
materialized='view') 
}}

SELECT DISTINCT
	customer_id,
	first_name,
	last_name,
	city
FROM {{ref('stg_customers') }}