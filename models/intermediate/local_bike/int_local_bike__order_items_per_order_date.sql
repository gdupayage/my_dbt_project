SELECT oi.order_id,
    product_id,
    unit_price,
    item_quantity,
    discount,
    total_order_item_amount_with_discount,
    customer_id,
    order_status,
    order_date,
    order_date_year,
    order_date_month,
    store_id,
    staff_id
from {{ ref('stg_local_bike__order_items' )}} as oi
left join {{ ref('stg_local_bike__orders' )}} as o on o.order_id = oi.order_id