with us_counties as 
(
    select * from {{ source("covid", "us_counties") }}
)

select * 
from us_counties