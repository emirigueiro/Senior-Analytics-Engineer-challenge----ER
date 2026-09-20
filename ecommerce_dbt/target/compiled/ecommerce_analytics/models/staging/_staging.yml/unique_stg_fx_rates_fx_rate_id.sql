
    
    

select
    fx_rate_id as unique_field,
    count(*) as n_records

from "warehouse"."staging"."stg_fx_rates"
where fx_rate_id is not null
group by fx_rate_id
having count(*) > 1


