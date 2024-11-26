select
 order_id,
 product_id,
 list_price as unit_price,
 quantity as item_quantity,
 discount,
 (list_price * quantity) as total_order_item_amount,
 (list_price * quantity * (1 - discount)) as total_order_item_amount_with_discount
from {{ source('local_bike', 'order_items') }}