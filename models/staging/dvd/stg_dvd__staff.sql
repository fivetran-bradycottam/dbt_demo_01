with staff as (

    select * from {{ source('dvd', 'staff') }}

)
select * 
from staff