SELECT product_id,
    SUM (item_quantity) as sum_quantity
FROM {{ ref('stg_local_bike__order_items') }}
GROUP BY product_id
ORDER BY 2 DESC