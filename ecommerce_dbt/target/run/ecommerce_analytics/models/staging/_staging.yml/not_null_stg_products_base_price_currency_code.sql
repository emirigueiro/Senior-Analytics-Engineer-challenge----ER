
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select base_price_currency_code
from "warehouse"."staging"."stg_products"
where base_price_currency_code is null



  
  
      
    ) dbt_internal_test