with raw_orders as (
    select *
    from {{ source('data', 'external/csv/my_data.csv') }}
)
select *
from raw_orders