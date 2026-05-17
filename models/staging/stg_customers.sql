{{ config(
materialized='view') 
}}

SELECT
	customer_id,
	first_name,
	last_name,
	city
FROM {{ref('customers') }}