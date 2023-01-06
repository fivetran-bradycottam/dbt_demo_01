with city as (

    select * from {{ source('dvd', 'city') }}

)

select * 
from city