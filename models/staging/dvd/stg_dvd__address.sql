with address as (

    select * from {{ source('dvd', 'address') }}

)

select * 
from address