with masks as
(
    select * from {{ ref("stg_covid19__mask_use_by_country") }}
),
counties as 
(
    select * from {{ ref("stg_covid19__us_counties") }}
), 

transformed as
(
    select * from counties 
    inner join masks on masks.countyfp = counties.fips
), 
final as 
(
    select * from transformed
)

select * 
from final