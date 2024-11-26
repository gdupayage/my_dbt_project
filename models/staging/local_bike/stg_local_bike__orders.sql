select
 order_id,
 customer_id,
 order_status,
 order_date,
 EXTRACT(YEAR FROM order_date) AS order_date_year,
 EXTRACT(MONTH FROM order_date) AS order_date_month,
 store_id,
 staff_id
from {{ source('local_bike', 'orders') }}