SELECT 
order_date_year,
order_date_month,
product_id,
SUM (item_quantity) AS total_quantity
FROM {{ ref('int_local_bike__order_items_per_order_date') }}
GROUP BY 1,2,3
ORDER BY 1,2,4