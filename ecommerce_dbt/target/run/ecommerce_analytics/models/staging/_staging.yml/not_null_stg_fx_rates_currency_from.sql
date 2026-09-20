
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select currency_from
from "warehouse"."staging"."stg_fx_rates"
where currency_from is null



  
  
      
    ) dbt_internal_test