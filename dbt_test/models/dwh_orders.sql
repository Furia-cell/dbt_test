with cleaned_orders as (
    select *
    from {{ ref('raw_orders') }}
    where order_status != 'Сanceled'
)
select *
from cleaned_orders
