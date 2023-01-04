with masks as
(
    select * 
    from {{ ref("stg_covid19__mask_use_by_country") }}
),
counties as 
(
    select * 
    from {{ ref("stg_covid19__us_counties") }}
), 

final as
(
    select 
        counties.county, 
        counties.state, 
        masks.* 
    from counties 
    inner join masks on masks.countyfp = counties.fips
    where counties.state = 'Utah'
    order by always desc
)

select * 
from final