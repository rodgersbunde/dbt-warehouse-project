{{ config(
materialized='view')
 }}

SELECT
	order_id,
	customer_id,
	product_name,
	category,
	quantity,
	price,
	quantity*price as total_amount
FROM {{ ref('orders') }}
