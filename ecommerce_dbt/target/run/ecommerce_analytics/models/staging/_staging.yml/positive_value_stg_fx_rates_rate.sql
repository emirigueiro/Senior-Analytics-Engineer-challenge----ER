
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

select *
from "warehouse"."staging"."stg_fx_rates"
where rate <= 0


  
  
      
    ) dbt_internal_test