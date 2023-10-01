with raw_orders as (
    select *
    from {{ ref('orders') }}
)
select *
from raw_orders