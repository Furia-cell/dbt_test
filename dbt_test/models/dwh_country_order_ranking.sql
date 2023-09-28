with country_order_data as (
    select
        order_country,
        count(*) as order_count,
        sum(product_price) as total_order_amount
    from cleaned_orders
    group by order_country
)
select *
from country_order_data
order by order_count desc, total_order_amount desc