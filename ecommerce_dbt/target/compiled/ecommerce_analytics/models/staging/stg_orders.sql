-- Grano: un registro por orden (cabecera).
-- Castea tipos, separa fecha y hora de la orden y normaliza moneda y status.
-- No filtra filas: los problemas de calidad se marcan más adelante (intermediate).

with source as (

    select * from "warehouse"."raw"."orders"

),

renamed as (

    select
        cast(id as integer)                     as order_id,
        cast(customer_id as integer)            as customer_id,
        cast(order_date as timestamp)           as ordered_at,
        cast(order_date as date)                as order_date,
        cast(total_amount as decimal(18, 2))    as order_total_amount,
        upper(trim(currency))                   as currency_code,
        lower(trim(status))                     as order_status,
        _loaded_at

    from source

)

select * from renamed