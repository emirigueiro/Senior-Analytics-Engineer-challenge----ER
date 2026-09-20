
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select currency_to
from "warehouse"."staging"."stg_fx_rates"
where currency_to is null



  
  
      
    ) dbt_internal_test