with payment as (

    select * from {{ source('dvd', 'payment') }}

)

select * 
from payment