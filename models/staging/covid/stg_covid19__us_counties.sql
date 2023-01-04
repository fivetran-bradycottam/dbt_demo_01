with us_counties as 
(
    select * from {{ source("covid", "us_counties") }}
),

fields as 
(
    select 
        county, 
        state,
        fips
    from us_counties
)

select * 
from fields