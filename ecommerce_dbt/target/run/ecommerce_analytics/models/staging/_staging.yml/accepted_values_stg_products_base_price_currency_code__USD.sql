
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        base_price_currency_code as value_field,
        count(*) as n_records

    from "warehouse"."staging"."stg_products"
    group by base_price_currency_code

)

select *
from all_values
where value_field not in (
    'USD'
)



  
  
      
    ) dbt_internal_test