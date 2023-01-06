with import as (

    select * 
    from {{ source('dvd', 'customer') }}

)

select * 
from import