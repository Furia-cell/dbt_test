with cleaned_orders as (
    select *
    from {{ ref('orders') }}
    where order_status != 'Сanceled'
)
select *
from cleaned_orders
